import 'dart:async';
import 'package:detectable_text_field/detector/sample_regular_expressions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/name_icon_mapping.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:oktoast/oktoast.dart';
import 'package:together_app/components/buttons.dart';
import 'package:together_app/components/hashtag_selection_sheet.dart';
import 'package:together_app/components/text_fields.dart';
import 'package:together_app/graphql/mutation/mutation.graphql.dart';
import 'package:together_app/graphql/query/query.graphql.dart';
import 'package:together_app/graphql/schema/schema.graphql.dart';
import 'package:together_app/models/hashtag_key_match.dart';
import 'package:together_app/utils/constants.dart';
import 'package:together_app/utils/routes.dart';

class SkillsEditScreen extends StatefulWidget {
  static String routeName = '/skills_edit_screen';

  final SkillsEditScreenArguments arguments;

  const SkillsEditScreen({
    Key? key,
    required this.arguments,
  }) : super(key: key);

  @override
  State<SkillsEditScreen> createState() => _SkillsEditScreenState();
}

class _SkillsEditScreenState extends State<SkillsEditScreen> {
  String? skillId;
  GraphQLClient? gqlClient;
  GlobalKey messageTextKey = GlobalKey();
  FocusNode messageTextFocus = FocusNode();
  String skillTitle = '';
  String skillMessage = '';
  List<String> skillHashtagList = [];
  String firstHashtagName = '';
  bool isAvailable = true;
  late TextEditingController titleTextController;
  late TextEditingController messageTextController;
  TextSelection? textSelectionRecord;
  bool messageBoxTapped = false;
  List<RegExpMatch> hashtagMatches = [];
  late StreamController<List<RegExpMatch>> hashtagMatchListStreamController;
  late Stream<List<RegExpMatch>> hashtagMatchListStream;
  double messageBoxHeight = 0;
  late StreamController<HashtagKeyMatch?> hashtagSearchKeyStreamController;
  late Stream<HashtagKeyMatch?> hashtagSearchKeyStream;
  Function? fetchMoreFunctionForIcon;
  bool isProcessing = false;
  bool isSaved = false;

  void onHideHashtagSearchField() {
    hashtagSearchKeyStreamController.add(null);
  }

  void onShowHashtagSearchField(HashtagKeyMatch match) {
    hashtagSearchKeyStreamController.add(match);
  }

  void onFilterHashtagFromMessage(String message) {
    hashtagMatches.clear();
    hashTagRegExp.allMatches(message).forEach((element) {
      hashtagMatches.add(element);
    });
    hashtagMatchListStreamController.add(hashtagMatches);

    if (hashtagMatches.isNotEmpty) {
      String hashtag = hashtagMatches[0].group(0)!.trim().replaceFirst("#", "");
      if (firstHashtagName != hashtag) {
        firstHashtagName = hashtag;
        if (fetchMoreFunctionForIcon != null) {
          fetchMoreFunctionForIcon!(
            GQLFetchMoreOptionsQueryGetHashtagMetaByName(
              variables: VariablesQueryGetHashtagMetaByName(
                metaName: firstHashtagName,
              ),
              updateQuery: (previousResultData, fetchMoreResultData) {
                return fetchMoreResultData;
              },
            ),
          );
        }
      }
    } else {
      firstHashtagName = '';
    }
  }

  void onFixMessageWhenRemoveTag(int start, int end) {
    onGetMessageBoxPosition();
    String text1 = messageTextController.text.substring(0, start);
    String text2 = messageTextController.text
        .substring(end, messageTextController.text.length);
    messageTextFocus.requestFocus();
    messageTextController.text = text1 + text2;
    messageTextController.selection =
        TextSelection.fromPosition(TextPosition(offset: start));
    setState(() {
      skillMessage = messageTextController.text;
    });
  }

  void onGetMessageBoxPosition() {
    if (messageBoxHeight == 0) {
      RenderBox? box =
          messageTextKey.currentContext?.findRenderObject() as RenderBox?;
      setState(() {
        messageBoxHeight = box?.size.height ?? 0;
      });
    }
  }

  void onDetectCursorOnHashtag() {
    int start = messageTextController.selection.start;
    int end = messageTextController.selection.end;
    String text = messageTextController.text;
    RegExpMatch? matchElement = hashtagMatches.firstWhereOrNull((element) {
      return start > element.start && end <= element.end;
    });

    /// normal regex match
    if (matchElement != null) {
      HashtagKeyMatch match = HashtagKeyMatch(
        keyword: matchElement.group(0)!.trim().replaceFirst("#", ""),
        start: matchElement.start,
        end: matchElement.end,
      );
      onShowHashtagSearchField(match);
    }

    /// start with "#" only match
    else if (start == 1 && text.substring(start - 1, start) == "#") {
      HashtagKeyMatch match = HashtagKeyMatch(
        keyword: '',
        start: start - 1,
        end: start,
      );
      onShowHashtagSearchField(match);
    }

    /// start with " #" only match
    else if (start >= 2 && text.substring(start - 2, start) == " #") {
      HashtagKeyMatch match = HashtagKeyMatch(
        keyword: '',
        start: start - 2,
        end: start,
      );
      onShowHashtagSearchField(match);
    }

    /// no match
    else {
      onHideHashtagSearchField();
    }
  }

  void onHandleHashtagTap(int start, int end, String hashtag, String icon) {
    messageTextFocus.requestFocus();
    if (start == 0 && end == 0) {
      messageTextController.text += hashtag;
    } else {
      String t1 = messageTextController.text.substring(0, start);
      String t2 = " #$hashtag ";
      String t3 = messageTextController.text.substring(end);
      messageTextController.text = t1 + t2 + t3;
      messageTextController.selection = TextSelection.fromPosition(
        TextPosition(offset: (t1 + t2).length),
      );
    }
    setState(() {
      skillMessage = messageTextController.text;
    });
  }

  void onAddSkill(
    String userId,
    String title,
    String message,
    List<String> hashtagList,
  ) async {
    setState(() {
      isProcessing = true;
    });
    gqlClient!.mutateCreateSkill(
      GQLOptionsMutationCreateSkill(
        fetchPolicy: FetchPolicy.noCache,
        variables: VariablesMutationCreateSkill(
          addHashtagMetaInputList: List.generate(
            hashtagList.length,
            (index) {
              return InputAddHashtagMetaInput(
                metaName: hashtagList[index],
                hashtagVariants: [
                  InputHashtagVariantRef(
                    variantName: hashtagList[index],
                  )
                ],
              );
            },
          ),
          addSkillInput: InputAddSkillInput(
            owner: InputUserRef(id: userId),
            title: title,
            message: message,
            isAvailable: isAvailable,
            hashtagVariants: List.generate(
              hashtagList.length,
              (index) {
                return InputHashtagVariantRef(
                  variantName: hashtagList[index],
                );
              },
            ),
          ),
        ),
        onCompleted: (result, MutationCreateSkill? data) {
          String? _skillId = data?.addSkill?.skill?[0]?.id;
          onProcessSaveResult(_skillId);
        },
        onError: (e) {
          setState(() {
            isProcessing = false;
          });
          showToast('Save Error!');
        },
      ),
    );
  }

  void onUpdateSkill(
    String userId,
    String title,
    String message,
    List<String> hashtagList,
  ) async {
    setState(() {
      isProcessing = true;
    });
    List<String> hashtagDeleteList =
        skillHashtagList.toSet().difference(hashtagList.toSet()).toList();
    gqlClient!.mutateUpdateSkill(
      GQLOptionsMutationUpdateSkill(
        fetchPolicy: FetchPolicy.noCache,
        variables: VariablesMutationUpdateSkill(
          skillId: skillId!,
          addHashtagMetaInputList: List.generate(
            hashtagList.length,
            (index) {
              return InputAddHashtagMetaInput(
                metaName: hashtagList[index],
                hashtagVariants: [
                  InputHashtagVariantRef(
                    variantName: hashtagList[index],
                  )
                ],
              );
            },
          ),
          title: title,
          message: message,
          isAvailable: isAvailable,
          hashtagsToDelete: List.generate(
            hashtagDeleteList.length,
            (index) {
              return InputHashtagVariantRef(
                variantName: hashtagDeleteList[index],
              );
            },
          ),
          hashtagsToSave: List.generate(
            hashtagList.length,
            (index) {
              return InputHashtagVariantRef(
                variantName: hashtagList[index],
              );
            },
          ),
        ),
        onCompleted: (result, MutationUpdateSkill? data) {
          String? _skillId = data?.updateSkill?.skill?[0]?.id;
          skillHashtagList = hashtagList;
          onProcessSaveResult(_skillId);
        },
        onError: (e) {
          setState(
            () {
              isProcessing = false;
            },
          );
          showToast('Save Error!');
        },
      ),
    );
  }

  void onProcessSaveResult(String? _skillId) {
    print("_skillId $_skillId");
    if (_skillId != null) {
      showToast(skillId == null ? 'Skill Added!' : "Skill Updated");
      setState(() {
        isSaved = true;
        skillId = _skillId;
        isProcessing = false;
      });
      Navigator.maybePop(context);
    } else {
      setState(() {
        isProcessing = false;
      });
      showToast('Unable to saved');
    }
  }

  void onSaveClicked() async {
    FlutterSecureStorage storage = const FlutterSecureStorage();
    String? userId = await storage.read(key: 'userId');
    String title = skillTitle.trim();
    String message = skillMessage.trim();
    List<String> hashtagList = [];
    hashTagRegExp.allMatches(message).forEach((element) {
      String tag = element.group(0)!.trim().replaceFirst("#", '');
      if (!hashtagList.contains(tag)) {
        hashtagList.add(tag);
      }
    });
    if (userId == null) {
      showToast('User Error');
    } else if (hashtagList.isEmpty) {
      showToast('Please add a hashtag');
    } else {
      if (skillId == null) {
        onAddSkill(userId, title, message, hashtagList);
      } else {
        onUpdateSkill(userId, title, message, hashtagList);
      }
    }
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
  void initState() {
    skillId = widget.arguments.skillId;
    hashtagMatchListStreamController = StreamController<List<RegExpMatch>>();
    hashtagMatchListStream = hashtagMatchListStreamController.stream;

    hashtagSearchKeyStreamController = StreamController<HashtagKeyMatch?>();
    hashtagSearchKeyStream =
        hashtagSearchKeyStreamController.stream.asBroadcastStream();
    if (skillId != null) {
      skillTitle = widget.arguments.skillTitle!;
      skillMessage = widget.arguments.skillMessage!;
      isAvailable = widget.arguments.isAvailable!;
      skillHashtagList = widget.arguments.skillHashtagList!;
      titleTextController = TextEditingController(text: skillTitle);
      messageTextController = TextEditingController(text: skillMessage);
      onFilterHashtagFromMessage(messageTextController.text);
    } else {
      titleTextController = TextEditingController();
      if (widget.arguments.hashtagMetaName != null) {
        String text = " #${widget.arguments.hashtagMetaName}";
        skillMessage = text;
        messageTextController = TextEditingController(text: text);
        onFilterHashtagFromMessage(messageTextController.text);
      } else {
        messageTextController = TextEditingController();
      }
    }

    messageTextController.addListener(() {
      textSelectionRecord = messageTextController.selection;
      onFilterHashtagFromMessage(messageTextController.text);
      onDetectCursorOnHashtag();
    });

    super.initState();
  }

  @override
  void dispose() {
    hashtagMatchListStreamController.close();
    hashtagSearchKeyStreamController.close();
    titleTextController.dispose();
    messageTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    return WillPopScope(
      onWillPop: () async {
        Get.back(result: isSaved);
        return Future.value(false);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: AppBarBackButton(
            onPressed: () {
              Navigator.maybePop(context);
            },
          ),
          title: Text(
            widget.arguments.skillId == null
                ? "Create a Skill Card"
                : "Edit the Skill Card",
          ),
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding: EdgeInsets.all(20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40.w,
                      child: OutlineTextField(
                        controller: titleTextController,
                        contentPadding: EdgeInsets.only(
                          left: 16.w,
                          right: 16.w,
                        ),
                        label: Text(
                          "Title",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        textInputAction: TextInputAction.next,
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        minLines: 1,
                        maxLines: 1,
                        onChanged: (value) {
                          setState(() {
                            skillTitle = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 20.w),
                    Focus(
                      onFocusChange: (value) {
                        if (!value) {
                          onHideHashtagSearchField();
                        }
                      },
                      child: OutlineDetectableTextField(
                          focusNode: messageTextFocus,
                          key: messageTextKey,
                          controller: messageTextController,
                          contentPadding: EdgeInsets.all(16.w),
                          label: Text(
                            "Description",
                            style: TextStyle(fontSize: 15.sp),
                          ),
                          decoratedStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue),
                          basicStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          // textInputAction: TextInputAction.done,
                          minLines: 5,
                          maxLines: 5,
                          // maxLength: 200,
                          onChanged: (value) {
                            setState(() {
                              skillMessage = value;
                            });
                          },
                          onTap: () {
                            /// should reset cursor position
                            if (widget.arguments.hashtagMetaName != null &&
                                !messageBoxTapped) {
                              messageTextController.selection =
                                  TextSelection.fromPosition(
                                      const TextPosition(offset: 0));
                            }
                            messageBoxTapped = true;
                            onGetMessageBoxPosition();
                            onDetectCursorOnHashtag();
                          }),
                    ),
                    SizedBox(height: 10.w),
                    const Text(
                      "Tags:",
                      style: TextStyle(height: 2),
                    ),
                    StreamBuilder(
                      stream: hashtagMatchListStream,
                      builder: (BuildContext context,
                          AsyncSnapshot<List<RegExpMatch>> snapshot) {
                        if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                          return Wrap(
                            spacing: 8.w,
                            children: [
                              ...List.generate(snapshot.data!.length, (index) {
                                RegExpMatch element = snapshot.data![index];
                                return buildHashtagChip(element);
                              }),
                              buildAddHashtagButton()
                            ],
                          );
                        } else {
                          return Align(
                            alignment: Alignment.centerLeft,
                            child: buildAddHashtagButton(),
                          );
                        }
                      },
                    ),
                    SizedBox(height: 10.w),
                    const Text(
                      "Icon:",
                      style: TextStyle(height: 2),
                    ),
                    SizedBox(height: 2.w),
                    GQLFQueryGetHashtagMetaByName(
                      options: GQLOptionsQueryGetHashtagMetaByName(
                        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
                        variables: VariablesQueryGetHashtagMetaByName(
                          metaName: firstHashtagName,
                        ),
                      ),
                      builder: (result, {refetch, fetchMore}) {
                        if (fetchMoreFunctionForIcon != fetchMore) {
                          fetchMoreFunctionForIcon = fetchMore;
                        }
                        String iconName =
                            result.parsedData?.getHashtagMeta?.iconName ?? '';
                        return iconName != ''
                            ? Row(
                                children: [
                                  FaIcon(
                                    faIconNameMapping[iconName],
                                    color: kDeepBlue,
                                  ),
                                  SizedBox(width: 6.w),
                                  Text(
                                    "from #$firstHashtagName",
                                    style: TextStyle(color: kDeepBlue),
                                  ),
                                ],
                              )
                            : const SizedBox.shrink();
                      },
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 90.w + messageBoxHeight,
              left: 20.w,
              right: 70.w,
              child: HashtagSelectionSheet(
                hashtagSearchStream: hashtagSearchKeyStream,
                onTapHashtag: onHandleHashtagTap,
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                bottom: keyboardHeight,
                child: SafeArea(
                  top: false,
                  child: buildActionSection(),
                )),
          ],
        ),
      ),
    );
  }

  Widget buildAddHashtagButton() {
    return ActionChip(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        pressElevation: 0,
        elevation: 0,
        visualDensity: const VisualDensity(horizontal: 0.0, vertical: -2),
        avatar: const Icon(
          Icons.add,
          color: Colors.grey,
        ),
        labelPadding: EdgeInsets.only(right: 3.w),
        label: const Text(
          "Add tag",
          style: TextStyle(color: Colors.grey),
        ),
        onPressed: () {
          onGetMessageBoxPosition();
          messageTextFocus.requestFocus();
          messageTextController.text = messageTextController.text.trimRight();
          messageTextController.text += " #";
          messageTextController.selection = TextSelection.fromPosition(
            TextPosition(offset: messageTextController.text.length),
          );
          setState(() {
            skillMessage = messageTextController.text;
          });
        });
  }

  Widget buildHashtagChip(RegExpMatch match) {
    String tag = match.group(0)!.trim().replaceFirst("#", '').toLowerCase();
    return InputChip(
        visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
        labelPadding: EdgeInsets.only(left: 4.w),
        label: Text(
          tag,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: kPrimaryOrange,
        deleteIcon: Icon(
          Icons.close,
          color: Colors.white,
          size: 16.w,
        ),
        onDeleted: () {
          onFixMessageWhenRemoveTag(match.start, match.end);
        },
        onPressed: () {
          onFixMessageWhenRemoveTag(match.start, match.end);
        });
  }

  Widget buildActionSection() {
    return Container(
      height: 60.w,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Colors.grey[300]!,
              width: 1,
            ),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Switch(
                activeColor: Colors.green,
                value: isAvailable,
                onChanged: (value) {
                  setState(
                    () {
                      isAvailable = value;
                    },
                  );
                },
              ),
              Text(
                'Available',
                style: TextStyle(fontSize: 14.sp),
              ),
            ],
          ),
          ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.grey[200]!),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.w),
                ),
              ),
            ),
            onPressed: () {
              Navigator.maybePop(context);
            },
            child: Text(
              "Cancel",
              style: TextStyle(color: kDeepBlue, fontSize: 14.sp),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return Colors.grey;
                  }
                  return kPrimaryOrange;
                }),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.w),
                  ),
                ),
              ),
              onPressed: skillTitle.trim() != '' && skillMessage.trim() != ''
                  ? () {
                      if (!isProcessing) {
                        onSaveClicked();
                      }
                    }
                  : null,
              child: Row(
                children: [
                  isProcessing
                      ? SizedBox(
                          width: 16.w,
                          height: 16.w,
                          child: CircularProgressIndicator(
                            valueColor: const AlwaysStoppedAnimation<Color>(
                                Colors.white),
                            strokeWidth: 2.w,
                          ),
                        )
                      : Icon(
                          Icons.check,
                          size: 16.w,
                          color: Colors.white,
                        ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Text(
                    "Save Changes",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
