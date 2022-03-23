import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oktoast/oktoast.dart';
import 'package:together_app/components/avatar_picker.dart';
import 'package:together_app/components/buttons.dart';
import 'package:together_app/components/text_fields.dart';
import 'package:together_app/graphql/mutation/mutation.graphql.dart';
import 'package:together_app/graphql/query/query.graphql.dart';
import 'package:together_app/utils/routes.dart';

class ProfileEditScreen extends StatefulWidget {
  static String routeName = "/profile_edit_screen";
  final ProfileEditScreenArguments arguments;
  const ProfileEditScreen({
    Key? key,
    required this.arguments,
  }) : super(key: key);

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  GraphQLClient? gqlClient;
  TextEditingController nameTextController = TextEditingController();
  TextEditingController bioTextController = TextEditingController();
  String userName = "";
  String userEmail = "";
  String userBio = "";
  String userAvatar = "";
  bool hasLoaded = false;
  bool isProcessing = false;

  void onGetUserInfo() async {
    var rst = await gqlClient!.queryGetUserWithId(
      OptionsQueryGetUserWithId(
        variables: VariablesQueryGetUserWithId(
          id: widget.arguments.userId,
        ),
      ),
    );
    String? userId = rst.parsedData?.getUser?.id;
    if (userId != null) {
      setState(() {
        hasLoaded = true;
        userName = rst.parsedData?.getUser?.name ?? "";
        userEmail = rst.parsedData?.getUser?.email ?? "";
        userBio = rst.parsedData?.getUser?.bio ?? "";
        userAvatar = rst.parsedData?.getUser?.avatar ?? "";
      });
      nameTextController.text = userName;
      bioTextController.text = userBio;
    } else {
      setState(() {
        hasLoaded = true;
      });
      showToast("Unable to get info");
    }
  }

  void onUpdateUserInfo() {
    setState(() {
      isProcessing = true;
    });
    gqlClient!.mutateUpdateUser(OptionsMutationUpdateUser(
        fetchPolicy: FetchPolicy.noCache,
        variables: VariablesMutationUpdateUser(
          id: widget.arguments.userId,
          name: userName,
          bio: userBio,
          avatar: userAvatar,
        ),
        onCompleted: (result, MutationUpdateUser? data) async {
          print(result);
          setState(() {
            isProcessing = false;
          });
          showToast("Update success");
          await Future.delayed(Duration(milliseconds: 500));
          Get.back(result: true);
        },
        onError: (e) {
          print("error $e");
          setState(() {
            isProcessing = false;
          });
        }));
  }

  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
      onGetUserInfo();
    });
  }

  @override
  void dispose() {
    nameTextController.dispose();
    bioTextController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final GraphQLClient client = GraphQLProvider.of(context).value;
    if (client != gqlClient) {
      gqlClient = client;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Edit Profile"),
        leading: const AppBarBackButton(),
        actions: [
          IconButton(
            onPressed: userName.trim() != "" && userBio.trim() != ""
                ? () {
                    if (!isProcessing) {
                      onUpdateUserInfo();
                    }
                  }
                : null,
            icon: SizedBox(
              width: 25.w,
              height: 25.w,
              child: FittedBox(
                child: isProcessing
                    ? CircularProgressIndicator(
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.white),
                        strokeWidth: 3.w,
                      )
                    : const Icon(Icons.save),
              ),
            ),
          ),
        ],
      ),
      body: hasLoaded
          ? Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OutlineTextField(
                    controller: nameTextController,
                    label: const Text("Name to display"),
                    maxLines: 1,
                    minLines: 1,
                    onChanged: (value) {
                      setState(() {
                        userName = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 25.w,
                  ),
                  OutlineTextField(
                    minLines: 3,
                    maxLines: 3,
                    hintText: "Tell us a bit about yourself",
                    hintStyle: const TextStyle(color: Colors.grey),
                    label: const Text("Short bio"),
                    controller: bioTextController,
                    onChanged: (value) {
                      setState(() {
                        userBio = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 25.w,
                  ),
                  AvatarPicker(
                    fileKey: userAvatar,
                    onUploaded: (file, key) {
                      setState(() {
                        userAvatar = key;
                      });
                    },
                  ),
                ],
              ),
            )
          : const Center(
              child: Text("Loading"),
            ),
    );
  }
}
