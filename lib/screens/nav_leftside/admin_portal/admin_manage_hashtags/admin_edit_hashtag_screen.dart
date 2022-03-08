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

  void onCheckHashtagMetaWithName() async {
    changeProcessingEditState(true);
    final result = await gqlClient!.queryGetHashtagMetaByName(
      GQLOptionsQueryGetHashtagMetaByName(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: VariablesQueryGetHashtagMetaByName(
          metaName: hashtag.toLowerCase(),
        ),
      ),
    );
    if (result.hasException) {
      showToast("Query Error");
      changeProcessingEditState(false);
    } else if (result.parsedData != null) {
      /// new hashtag, can create
      if (result.parsedData!.getHashtagMeta == null) {
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
      gqlClient!.mutateAddHashtagMeta(
        GQLOptionsMutationAddHashtagMeta(
            fetchPolicy: FetchPolicy.networkOnly,
            variables: VariablesMutationAddHashtagMeta(
              metaName: hashtag.toLowerCase(),
              iconName: iconName,
              blessed: blessed,
              defaultHashtagVariant: InputHashtagVariantRef(
                variantName: hashtag.toLowerCase(),
              ),
            ),
            onError: (e) {
              showToast("Mutation Error, $e");
              changeProcessingEditState(false);
            },
            onCompleted: (rst, data) async {
              if (data != null) {
                if (data.addHashtagMeta != null &&
                    data.addHashtagMeta!.hashtagMeta != null) {
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
      gqlClient!.mutateUpdateHashtagMeta(
        GQLOptionsMutationUpdateHashtagMeta(
            fetchPolicy: FetchPolicy.noCache,
            variables: VariablesMutationUpdateHashtagMeta(
              hashtagMetaInput: InputUpdateHashtagMetaInput(
                filter: InputHashtagMetaFilter(
                  id: [widget.arguments.id!],
                ),
                $set: InputHashtagMetaPatch(
                  iconName: iconName,
                  blessed: blessed,
                ),
              ),
            ),
            onError: (e) {
              showToast("Mutation Error, $e");
              changeProcessingEditState(false);
            },
            onCompleted: (rst, data) async {
              if (data != null) {
                if (data.updateHashtagMeta != null &&
                    data.updateHashtagMeta!.hashtagMeta != null) {
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

  void onDeleteHashtagMeta() {
    changeProcessingDeleteState(true);
    gqlClient!.mutateDeleteHashtagMeta(
      GQLOptionsMutationDeleteHashtagMeta(
        fetchPolicy: FetchPolicy.noCache,
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        variables: VariablesMutationDeleteHashtagMeta(
          hashtagMetaFilter: InputHashtagMetaFilter(
            id: [widget.arguments.id!],
          ),
        ),
        onError: (e) {
          showToast("Mutation Error, $e");
          changeProcessingDeleteState(false);
        },
        onCompleted: (rst, data) async {
          if (data != null) {
            if (data.deleteHashtagMeta != null &&
                data.deleteHashtagMeta!.numUids != null) {
              onDeleteHashtagVariant(data
                  .deleteHashtagMeta!.hashtagMeta![0]!.hashtagVariants!
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
      iconName = widget.arguments.iconName!;
      blessed = widget.arguments.blessed ?? false;
      nameTextController.text = widget.arguments.metaName!;
      if (widget.arguments.iconName! != '') {
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
                onCheckHashtagMetaWithName();
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
    return GQLFQueryGetHashtagMetaById(
        options: GQLOptionsQueryGetHashtagMetaById(
          fetchPolicy: FetchPolicy.networkOnly,
          variables: VariablesQueryGetHashtagMetaById(
            id: widget.arguments.id,
          ),
        ),
        builder: (result, {refetch, fetchMore}) {
          if (result.parsedData != null &&
              result.parsedData!.getHashtagMeta != null) {
            var variants = result.parsedData!.getHashtagMeta!.hashtagVariants;
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
                      onDeleteHashtagMeta();
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
                    }),
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
