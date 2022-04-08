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

class RequestsEditScreen extends StatefulWidget {
  static String routeName = '/requests_edit_screen';

  final RequestsEditScreenArguments arguments;

  const RequestsEditScreen({
    Key? key,
    required this.arguments,
  }) : super(key: key);

  @override
  State<RequestsEditScreen> createState() => _RequestsEditScreenState();
}

class _RequestsEditScreenState extends State<RequestsEditScreen> {
  String? requestId;
  GraphQLClient? gqlClient;
  GlobalKey messageTextKey = GlobalKey();
  FocusNode messageTextFocus = FocusNode();
  String requestTitle = '';
  String requestMessage = '';
  List<String> requestHashtagList = [];
  String firstHashtagName = '';
  EnumRequestStatus status = EnumRequestStatus.done;
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
            FetchMoreOptionsQueryGetHashtagByName(
              variables: VariablesQueryGetHashtagByName(
                name: firstHashtagName,
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
      requestMessage = messageTextController.text;
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
      requestMessage = messageTextController.text;
    });
  }

  void onAddRequest(
    String userId,
    String title,
    String message,
    List<String> hashtagList,
  ) async {
    setState(() {
      isProcessing = true;
    });
    gqlClient!.mutateCreateRequest(
      OptionsMutationCreateRequest(
        fetchPolicy: FetchPolicy.noCache,
        variables: VariablesMutationCreateRequest(
          addHashtagInputList: List.generate(
            hashtagList.length,
            (index) {
              return InputAddHashtagInput(
                name: hashtagList[index].toLowerCase(),
                hashtagVariants: [
                  InputHashtagVariantRef(
                    variant: hashtagList[index].toLowerCase(),
                  )
                ],
              );
            },
          ),
          addRequestInput: InputAddRequestInput(
            owner: InputUserRef(id: userId),
            title: title,
            message: message,
            status: status,
            hashtagVariants: List.generate(
              hashtagList.length,
              (index) {
                return InputHashtagVariantRef(
                  variant: hashtagList[index].toLowerCase(),
                );
              },
            ),
          ),
        ),
        onCompleted: (result, MutationCreateRequest? data) {
          String? _requestId = data?.addRequest?.request?[0]?.id;
          onProcessSaveResult(_requestId);
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

  void onUpdateRequest(
    String userId,
    String title,
    String message,
    List<String> hashtagList,
  ) async {
    setState(() {
      isProcessing = true;
    });
    List<String> hashtagDeleteList =
        requestHashtagList.toSet().difference(hashtagList.toSet()).toList();
    gqlClient!.mutateUpdateRequest(
      OptionsMutationUpdateRequest(
        fetchPolicy: FetchPolicy.noCache,
        variables: VariablesMutationUpdateRequest(
          requestId: requestId!,
          addHashtagInputList: List.generate(
            hashtagList.length,
            (index) {
              return InputAddHashtagInput(
                name: hashtagList[index].toLowerCase(),
                hashtagVariants: [
                  InputHashtagVariantRef(
                    variant: hashtagList[index].toLowerCase(),
                  )
                ],
              );
            },
          ),
          title: title,
          message: message,
          status: status,
          hashtagsToDelete: List.generate(
            hashtagDeleteList.length,
            (index) {
              return InputHashtagVariantRef(
                variant: hashtagDeleteList[index].toLowerCase(),
              );
            },
          ),
          hashtagsToSave: List.generate(
            hashtagList.length,
            (index) {
              return InputHashtagVariantRef(
                variant: hashtagList[index].toLowerCase(),
              );
            },
          ),
        ),
        onCompleted: (result, MutationUpdateRequest? data) {
          String? _requestId = data?.updateRequest?.request?[0]?.id;
          requestHashtagList = hashtagList;
          onProcessSaveResult(_requestId);
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

  void onProcessSaveResult(String? _requestId) {
    print("_requestId $_requestId");
    if (_requestId != null) {
      showToast(requestId == null ? 'Request Added!' : "Request Updated");
      setState(() {
        isSaved = true;
        requestId = _requestId;
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
    String title = requestTitle.trim();
    String message = requestMessage.trim();
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
      if (requestId == null) {
        onAddRequest(userId, title, message, hashtagList);
      } else {
        onUpdateRequest(userId, title, message, hashtagList);
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
    requestId = widget.arguments.requestId;
    hashtagMatchListStreamController = StreamController<List<RegExpMatch>>();
    hashtagMatchListStream = hashtagMatchListStreamController.stream;

    hashtagSearchKeyStreamController = StreamController<HashtagKeyMatch?>();
    hashtagSearchKeyStream =
        hashtagSearchKeyStreamController.stream.asBroadcastStream();
    if (requestId != null) {
      requestTitle = widget.arguments.requestTitle!;
      requestMessage = widget.arguments.requestMessage!;
      status = widget.arguments.requestStatus!;
      requestHashtagList = widget.arguments.requestHashtagList!;
      titleTextController = TextEditingController(text: requestTitle);
      messageTextController = TextEditingController(text: requestMessage);
      onFilterHashtagFromMessage(messageTextController.text);
    } else {
      titleTextController = TextEditingController();
      if (widget.arguments.hashtagName != null) {
        String text = " #${widget.arguments.hashtagName}";
        requestMessage = text;
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
            widget.arguments.requestId == null
                ? "Create a Request Card"
                : "Edit the Request Card",
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
                            requestTitle = value;
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
                              requestMessage = value;
                            });
                          },
                          onTap: () {
                            /// should reset cursor position
                            if (widget.arguments.hashtagName != null &&
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
                    QueryGetHashtagByNameWidget(
                      options: OptionsQueryGetHashtagByName(
                        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
                        variables: VariablesQueryGetHashtagByName(
                          name: firstHashtagName,
                        ),
                      ),
                      builder: (result, {refetch, fetchMore}) {
                        if (fetchMoreFunctionForIcon != fetchMore) {
                          fetchMoreFunctionForIcon = fetchMore;
                        }
                        String iconName =
                            result.parsedData?.getHashtag?.iconName ?? '';
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
            requestMessage = messageTextController.text;
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
              // change to dropdown box #FIXME
              // Switch(
              //   activeColor: Colors.green,
              //   value: status,
              //   onChanged: (value) {
              //     setState(
              //       () {
              //         status = value;
              //       },
              //     );
              //   },
              // ),
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
              onPressed:
                  requestTitle.trim() != '' && requestMessage.trim() != ''
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
