import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/name_icon_mapping.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:oktoast/oktoast.dart';
import 'package:together_app/graphql/requests/requests.graphql.dart';
import 'package:together_app/graphql/schema/schema.graphql.dart';
import 'package:together_app/utils/routes.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class AdminEditHashtagScreen extends StatefulWidget {
  final AdminEditHashtagScreenArguments arguments;
  static String routeName = '/admin_edit_hashtag_screen';
  const AdminEditHashtagScreen({
    Key? key,
    required this.arguments,
  }) : super(key: key);

  @override
  State<AdminEditHashtagScreen> createState() => _AdminEditHashtagScreenState();
}

class _AdminEditHashtagScreenState extends State<AdminEditHashtagScreen> {
  GraphQLClient? gqlClient;
  String hashtag = '';
  String iconName = '';
  TextEditingController nameTextController = TextEditingController();
  TextEditingController iconTextController = TextEditingController();
  bool isProcessing = false;

  void changeProcessingState(bool state) {
    if (mounted) {
      setState(() {
        isProcessing = state;
      });
    }
  }

  void onCheckHashtagWithName() async {
    changeProcessingState(true);
    final result = await gqlClient!.queryGetHashtagByName(
      GQLOptionsQueryGetHashtagByName(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: VariablesQueryGetHashtagByName(
          name: hashtag.toLowerCase(),
        ),
      ),
    );
    if (result.hasException) {
      showToast("Query Error");
      changeProcessingState(false);
    } else if (result.parsedData != null) {
      /// new hashtag, can create
      if (result.parsedData!.getHashtag == null) {
        await onAddHashtag();
      }

      /// hashtag exists, can't create
      else {
        showToast("Hashtag already exists!");
        changeProcessingState(false);
      }
    } else {
      showToast("result parsedData is null");
      changeProcessingState(false);
    }
  }

  Future<void> onAddHashtag() async {
    final result = await gqlClient!.mutateAddHashtag(
      GQLOptionsMutationAddHashtag(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: VariablesMutationAddHashtag(
          name: hashtag.toLowerCase(),
          iconName: iconName,
          blessed: false,
        ),
      ),
    );
    if (result.hasException) {
      showToast("Mutation Error");
      changeProcessingState(false);
    } else if (result.parsedData != null) {
      if (result.parsedData!.addHashtag != null &&
          result.parsedData!.addHashtag!.hashtag != null) {
        showToast("Hashtag added!");
        await Future.delayed(const Duration(milliseconds: 500));
        Get.back(result: result.parsedData!.addHashtag!.hashtag![0]);
      } else {
        showToast("Unable to add hashtag!");
        changeProcessingState(false);
      }
    } else {
      showToast("result parsedData is null");
      changeProcessingState(false);
    }
  }

  Future<void> onEditHashtag() async {
    final result = await gqlClient!.mutateUpdateHashtag(
      GQLOptionsMutationUpdateHashtag(
        variables: VariablesMutationUpdateHashtag(
          hashtagInput: InputUpdateHashtagInput(
              filter: InputHashtagFilter(
                id: [widget.arguments.id!],
              ),
              $set: InputHashtagPatch(iconName: iconName)),
        ),
      ),
    );
    if (result.hasException) {
      showToast("Mutation Error");
      changeProcessingState(false);
    } else if (result.parsedData != null) {
      if (result.parsedData!.updateHashtag != null &&
          result.parsedData!.updateHashtag!.hashtag != null) {
        showToast("Hashtag updated!");
        await Future.delayed(const Duration(milliseconds: 500));
        Get.back(result: result.parsedData!.updateHashtag!.hashtag![0]);
      } else {
        showToast("Unable to update hashtag!");
        changeProcessingState(false);
      }
    } else {
      showToast("result parsedData is null");
      changeProcessingState(false);
    }
  }

  @override
  void initState() {
    if (widget.arguments.id != null) {
      hashtag = widget.arguments.hashtag!;
      iconName = widget.arguments.iconName!;
      nameTextController.text = widget.arguments.hashtag!;
      iconTextController.text = widget.arguments.iconName!.split(' ')[1];
    }
    super.initState();
  }

  @override
  void dispose() {
    nameTextController.dispose();
    iconTextController.dispose();
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

  Widget buildSaveButton() {
    return IconButton(
      onPressed: hashtag != ''
          ? () {
              /// edit hashtag if id is not null
              if (widget.arguments.id != null) {
                onEditHashtag();
              }

              /// check dup and add new hashtag
              else {
                onCheckHashtagWithName();
              }
            }
          : null,
      icon: isProcessing
          ? SizedBox(
              width: 25.w,
              height: 25.w,
              child: CircularProgressIndicator(
                strokeWidth: 3.w,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            )
          : Icon(
              Icons.save,
              size: 25.w,
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
        title:
            Text(widget.arguments.id == null ? "Add Hashtag" : "Edit Hashtag"),
        actions: [
          buildSaveButton(),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.w, horizontal: 20.w),
        child: Column(
          children: [
            TextField(
              readOnly: widget.arguments.id != null,
              controller: nameTextController,
              decoration: const InputDecoration(
                icon: Icon(Icons.tag),
                label: Text("Enter the hashtag name"),
              ),
              onChanged: (value) {
                setState(() {
                  hashtag = value;
                });
              },
            ),
            TypeAheadField(
                hideSuggestionsOnKeyboardHide: false,
                textFieldConfiguration: TextFieldConfiguration(
                    controller: iconTextController,
                    decoration: InputDecoration(
                      icon: iconName != ''
                          ? FaIcon(
                              faIconNameMapping[iconName]!,
                              size: 24.w,
                            )
                          : FaIcon(
                              FontAwesomeIcons.briefcase,
                              color: Colors.transparent,
                              size: 24.w,
                            ),
                      label: const Text("Search by an icon name"),
                    )),
                suggestionsCallback: (pattern) {
                  if (pattern != '') {
                    List<MapEntry<String, IconData>> iconList =
                        faIconNameMapping.entries
                            .where((e) => e.key.split(' ')[1].contains(pattern))
                            .toList();
                    return iconList;
                  } else {
                    return [];
                  }
                },
                onSuggestionSelected: (suggestion) {
                  if (suggestion is MapEntry<String, IconData>) {
                    iconTextController.text = suggestion.key.split(' ')[1];
                    setState(() {
                      iconName = suggestion.key;
                    });
                  }
                },
                itemBuilder: (context, suggestion) {
                  if (suggestion is MapEntry<String, IconData>) {
                    return ListTile(
                      dense: true,
                      leading: FaIcon(
                        suggestion.value,
                      ),
                      title: Text(suggestion.key.split(' ')[1]),
                      subtitle: Text(suggestion.key.split(' ')[0]),
                      trailing: iconName == suggestion.key
                          ? const Icon(
                              Icons.check_circle,
                              color: Colors.green,
                            )
                          : null,
                    );
                  } else {
                    return const SizedBox();
                  }
                },
                noItemsFoundBuilder: (context) {
                  return const ListTile(
                      title: Text(
                    "No icon found",
                    style: TextStyle(color: Colors.grey),
                  ));
                })
          ],
        ),
      ),
    );
  }
}
