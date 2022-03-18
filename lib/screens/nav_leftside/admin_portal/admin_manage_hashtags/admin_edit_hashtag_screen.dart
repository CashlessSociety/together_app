import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/name_icon_mapping.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:oktoast/oktoast.dart';
import 'package:together_app/graphql/mutation/mutation.graphql.dart';
import 'package:together_app/graphql/query/query.graphql.dart';
import 'package:together_app/graphql/schema/schema.graphql.dart';
import 'package:together_app/utils/routes.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:url_launcher/url_launcher.dart';

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
  bool blessed = false;
  TextEditingController nameTextController = TextEditingController();
  TextEditingController iconTextController = TextEditingController();
  bool isProcessingEdit = false;
  bool isProcessingDelete = false;
  String faUrl = "https://fontawesome.com/v5/search?m=free";

  void changeProcessingEditState(bool state) {
    if (mounted) {
      setState(() {
        isProcessingEdit = state;
      });
    }
  }

  void changeProcessingDeleteState(bool state) {
    if (mounted) {
      setState(() {
        isProcessingDelete = state;
      });
    }
  }

  void onCheckHashtagWithName() async {
    changeProcessingEditState(true);
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
      changeProcessingEditState(false);
    } else if (result.parsedData != null) {
      /// new hashtag, can create
      if (result.parsedData!.getHashtag == null) {
        onAddHashtag();
      }

      /// hashtag exists, can't create
      else {
        showToast("Hashtag already exists!");
        changeProcessingEditState(false);
      }
    } else {
      showToast("result parsedData is null");
      changeProcessingEditState(false);
    }
  }

  void onAddHashtag() async {
    try {
      gqlClient!.mutateAddHashtag(
        GQLOptionsMutationAddHashtag(
            fetchPolicy: FetchPolicy.networkOnly,
            variables: VariablesMutationAddHashtag(
              name: hashtag.toLowerCase(),
              iconName: iconName,
              blessed: blessed,
              blessedInt: blessed ? 1 : 0,
              defaultHashtagVariant: InputHashtagVariantRef(
                variant: hashtag.toLowerCase(),
              ),
            ),
            onError: (e) {
              showToast("Mutation Error, $e");
              changeProcessingEditState(false);
            },
            onCompleted: (rst, data) async {
              if (data != null) {
                if (data.addHashtag != null &&
                    data.addHashtag!.hashtag != null) {
                  showToast("Hashtag added!");
                  await Future.delayed(const Duration(milliseconds: 500));
                  Get.back(result: true);
                } else {
                  showToast("Unable to add hashtag!");
                  changeProcessingEditState(false);
                }
              } else {
                showToast("result parsedData is null");
                changeProcessingEditState(false);
              }
            }),
      );
    } catch (e) {
      showToast("Error Catch");
      changeProcessingEditState(false);
    }
  }

  void onEditHashtag() async {
    try {
      changeProcessingEditState(true);
      gqlClient!.mutateUpdateHashtag(
        GQLOptionsMutationUpdateHashtag(
            fetchPolicy: FetchPolicy.noCache,
            variables: VariablesMutationUpdateHashtag(
              hashtagInput: InputUpdateHashtagInput(
                filter: InputHashtagFilter(
                  id: [widget.arguments.id!],
                ),
                $set: InputHashtagPatch(
                  iconName: iconName,
                  blessed: blessed,
                  blessedInt: blessed ? 1 : 0,
                ),
              ),
            ),
            onError: (e) {
              showToast("Mutation Error, $e");
              changeProcessingEditState(false);
            },
            onCompleted: (rst, data) async {
              if (data != null) {
                if (data.updateHashtag != null &&
                    data.updateHashtag!.hashtag != null) {
                  showToast("Hashtag updated!");
                  await Future.delayed(const Duration(milliseconds: 500));
                  Get.back(result: true);
                } else {
                  showToast("Unable to update hashtag!");
                  changeProcessingEditState(false);
                }
              } else {
                showToast("result parsedData is null");
                changeProcessingEditState(false);
              }
            }),
      );
    } catch (e) {
      showToast("Error Catch!");
      changeProcessingEditState(false);
    }
  }

  void onDeleteHashtag() {
    changeProcessingDeleteState(true);
    gqlClient!.mutateDeleteHashtag(
      GQLOptionsMutationDeleteHashtag(
        fetchPolicy: FetchPolicy.noCache,
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        variables: VariablesMutationDeleteHashtag(
          hashtagFilter: InputHashtagFilter(
            id: [widget.arguments.id!],
          ),
        ),
        onError: (e) {
          showToast("Mutation Error, $e");
          changeProcessingDeleteState(false);
        },
        onCompleted: (rst, data) async {
          if (data != null) {
            if (data.deleteHashtag != null &&
                data.deleteHashtag!.numUids != null) {
              onDeleteHashtagVariant(data
                  .deleteHashtag!.hashtag![0]!.hashtagVariants!
                  .map((e) => e!.id)
                  .toList());
            } else {
              showToast("Unable to delete hashtag!");
              changeProcessingDeleteState(false);
            }
          } else {
            showToast("result parsedData is null");
            changeProcessingDeleteState(false);
          }
        },
      ),
    );
  }

  void onDeleteHashtagVariant(List<String> variantIdList) {
    gqlClient!.mutateDeleteHashtagVariant(
      GQLOptionsMutationDeleteHashtagVariant(
        fetchPolicy: FetchPolicy.noCache,
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        variables: VariablesMutationDeleteHashtagVariant(
          hashtagVariantFilter: InputHashtagVariantFilter(
            id: variantIdList,
          ),
        ),
        onError: (e) {
          showToast("Mutation Error, $e");
          changeProcessingDeleteState(false);
        },
        onCompleted: (rst, data) async {
          if (data != null) {
            if (data.deleteHashtagVariant != null &&
                data.deleteHashtagVariant!.numUids != null) {
              showToast("Hashtag deleted!");
              await Future.delayed(const Duration(milliseconds: 500));
              Get.back(result: true);
            } else {
              showToast("Unable to delete hashtag!");
              changeProcessingDeleteState(false);
            }
          } else {
            showToast("result parsedData is null");
            changeProcessingDeleteState(false);
          }
        },
      ),
    );
  }

  @override
  void initState() {
    if (widget.arguments.id != null) {
      hashtag = widget.arguments.metaName!;
      iconName = widget.arguments.iconName ?? '';
      blessed = widget.arguments.blessed ?? false;
      nameTextController.text = widget.arguments.metaName!;
      if (iconName != '') {
        iconTextController.text = widget.arguments.iconName!.split(' ')[1];
      }
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
      icon: isProcessingEdit
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

  Widget buildDeleteFloatingButton() {
    return GQLFQueryGetHashtagById(
        options: GQLOptionsQueryGetHashtagById(
          fetchPolicy: FetchPolicy.networkOnly,
          variables: VariablesQueryGetHashtagById(
            id: widget.arguments.id,
          ),
        ),
        builder: (result, {refetch, fetchMore}) {
          if (result.parsedData != null &&
              result.parsedData!.getHashtag != null) {
            var variants = result.parsedData!.getHashtag!.hashtagVariants;
            if (variants != null) {
              int skillCount = variants
                  .map((e) => e!.skillsAggregate!.count ?? 0)
                  .reduce((a, b) => a + b);
              int requestCount = variants
                  .map((e) => e!.requestsAggregate!.count ?? 0)
                  .reduce((a, b) => a + b);
              if (skillCount + requestCount == 0) {
                return FloatingActionButton(
                    backgroundColor: Colors.red,
                    child: isProcessingDelete
                        ? SizedBox(
                            width: 25.w,
                            height: 25.w,
                            child: CircularProgressIndicator(
                              strokeWidth: 3.w,
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                  Colors.white),
                            ),
                          )
                        : Icon(
                            Icons.delete_forever,
                            size: 30.w,
                          ),
                    onPressed: () {
                      onDeleteHashtag();
                    });
              } else {
                return const SizedBox();
              }
            } else {
              return const SizedBox();
            }
          } else {
            return const SizedBox();
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.w, horizontal: 20.w),
            child: Column(
              children: [
                TextField(
                  readOnly: widget.arguments.id != null,
                  controller: nameTextController,
                  decoration: InputDecoration(
                    icon: SizedBox(
                      width: 30.w,
                      height: 30.w,
                      child: const Icon(Icons.tag),
                    ),
                    label: const Text("Enter the hashtag name"),
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
                        icon: SizedBox(
                          width: 30.w,
                          height: 30.w,
                          child: Center(
                            child: iconName != ''
                                ? FaIcon(
                                    faIconNameMapping[iconName]!,
                                  )
                                : const FaIcon(
                                    FontAwesomeIcons.hashtag,
                                    color: Colors.transparent,
                                  ),
                          ),
                        ),
                        label: const Text("Search by an icon name"),
                      )),
                  suggestionsCallback: (pattern) {
                    if (pattern != '') {
                      List<MapEntry<String, IconData>> iconList =
                          faIconNameMapping.entries
                              .where(
                                  (e) => e.key.split(' ')[1].contains(pattern))
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
                  },
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.only(right: 16.w),
                  secondary: SizedBox(
                    width: 30.w,
                    height: 30.w,
                    child: const Center(
                      child: FaIcon(FontAwesomeIcons.solidHeart),
                    ),
                  ),
                  title: const Text("Blessed"),
                  subtitle: Text(blessed ? "On" : "Off"),
                  value: blessed,
                  onChanged: (value) {
                    setState(() {
                      blessed = value;
                    });
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.w),
                  child: ElevatedButton(
                    onPressed: () {
                      launch(faUrl);
                    },
                    child: const Text("Link to fontawesome.com"),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30.w + MediaQuery.of(context).viewPadding.bottom,
            right: 20.w,
            child: buildDeleteFloatingButton(),
          ),
        ],
      ),
    );
  }
}
