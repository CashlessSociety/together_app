import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:together_app/components/alter_scaffold.dart';
import 'package:together_app/graphql/mutation/mutation.graphql.dart';
import 'package:together_app/graphql/query/query.graphql.dart';
import 'package:together_app/utils/providers.dart';

class ProfileTestForm extends StatefulWidget {
  const ProfileTestForm({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileTestForm> createState() => _ProfileTestFormState();
}

class _ProfileTestFormState extends State<ProfileTestForm> {
  String email = '';
  String name = '';
  GraphQLClient? gqlClient;
  String buttonText = 'Join';
  bool isProcessing = false;

  @override
  void initState() {
    super.initState();
  }

  Future<MutationCreateUser?> createUser() async {
    final result = await gqlClient!.mutateCreateUser(
      OptionsMutationCreateUser(
        variables: VariablesMutationCreateUser(
          name: name,
          email: email,
          age: 0,
          createdTimestamp: DateTime.now().toUtc().toIso8601String(),
        ),
      ),
    );
    if (result.hasException) {
      return null;
    }
    return result.parsedData;
  }

  Future<QueryGetUserWithEmail$getUser?> checkIfUserExists() async {
    final result = await gqlClient!.queryGetUserWithEmail(
      OptionsQueryGetUserWithEmail(
        fetchPolicy: FetchPolicy.noCache,
        variables: VariablesQueryGetUserWithEmail(email: email),
      ),
    );
    if (result.hasException) {
      return null;
    } else if (result.parsedData != null &&
        result.parsedData!.getUser != null) {
      return result.parsedData!.getUser!;
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlterScaffold(
      bottomNavigationBar: null,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.w, bottom: 10.w),
              child: Text(
                'Fake Sign Up Form',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20.sp,
                    color: Colors.grey[600]),
              ),
            ),
            TextField(
                readOnly: isProcessing,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  label: Text("Enter your email address"),
                ),
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                }),
            TextField(
                readOnly: isProcessing,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  label: Text("Enter your full name"),
                ),
                onChanged: (value) {
                  name = value;
                }),
            SizedBox(height: 30.w),
            ElevatedButton(
                onPressed: () {
                  onHandleJoinLogic();
                },
                child: Text(buttonText)),
          ],
        ),
      ),
    );
  }

  Future<void> saveIdToStorage(String userId) async {
    const FlutterSecureStorage storage = FlutterSecureStorage();
    await storage.write(key: 'userId', value: userId);
  }

  void onHandleJoinLogic() async {
    if (!isProcessing) {
      setState(() {
        buttonText = "Checking";
        isProcessing = true;
      });
      QueryGetUserWithEmail$getUser? data = await checkIfUserExists();
      if (data == null) {
        setState(() {
          buttonText = "Creating";
        });
        MutationCreateUser? data = await createUser();
        if (data != null) {
          String userId = data.addUser!.user![0]!.id;
          String userName = data.addUser!.user![0]!.name;
          String userEmail = data.addUser!.user![0]!.email;
          String userAvatar = "";
          saveIdToStorage(userId);
          setState(() {
            buttonText = "Done!";
          });
          onRefreshUserInfo(
            id: userId,
            name: userName,
            email: userEmail,
            avatar: userAvatar,
          );
          await Future.delayed(const Duration(milliseconds: 500));
          onRefreshLoginState();
        } else {
          buttonText = "Join";
          isProcessing = false;
        }
      } else {
        String userId = data.id;
        String userName = data.name;
        String userEmail = data.email;
        String userAvatar = data.avatar ?? "";
        saveIdToStorage(userId);
        setState(() {
          buttonText = "Done!";
        });
        onRefreshUserInfo(
          id: userId,
          name: userName,
          email: userEmail,
          avatar: userAvatar,
        );
        await Future.delayed(const Duration(milliseconds: 500));
        onRefreshLoginState();
      }
    }
  }

  void onRefreshLoginState() {
    Provider.of<LoginStateRefresher>(context, listen: false).refresh();
  }

  void onRefreshUserInfo({
    required String id,
    required String name,
    required String email,
    required String avatar,
  }) {
    Provider.of<UserInfoNotifier>(context, listen: false).updateInfo(
      id: id,
      name: name,
      email: email,
      avatar: avatar,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final GraphQLClient client = GraphQLProvider.of(context).value;
    if (client != gqlClient) {
      gqlClient = client;
    }
  }
}
