import 'dart:async';
import 'package:detectable_text_field/detector/sample_regular_expressions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:together_app/components/buttons.dart';
import 'package:together_app/components/hashtag_selection_sheet.dart';
import 'package:together_app/components/text_fields.dart';
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
  GlobalKey messageTextKey = GlobalKey();
  String skillTitle = '';
  String skillMessage = '';
  bool isAvailable = true;
  late TextEditingController messageTextController;
  TextSelection? textSelectionRecord;
  bool messageBoxTapped = false;
  List<RegExpMatch> hashtagMatches = [];
  late StreamController<List<RegExpMatch>> hashtagMatchStreamController;
  late Stream<List<RegExpMatch>> hashtagMatchStream;
  double messageBoxHeight = 0;
  late StreamController<RegExpMatch?> hashtagSearchStreamController;
  late Stream<RegExpMatch?> hashtagSearchStream;

  void onHideHashtagSearchField() {
    hashtagSearchStreamController.add(null);
  }

  void onShowHashtagSearchField(RegExpMatch match) {
    hashtagSearchStreamController.add(match);
  }

  void onFilterHashtagFromMessage(String message) {
    hashtagMatches.clear();
    hashTagRegExp.allMatches(message).forEach((element) {
      hashtagMatches.add(element);
    });
    hashtagMatchStreamController.add(hashtagMatches);
  }

  void onFixMessageWhenRemoveTag(int start, int end) {
    String text1 = messageTextController.text.substring(0, start);
    String text2 = messageTextController.text
        .substring(end, messageTextController.text.length);
    messageTextController.text = text1 + text2;
    messageTextController.selection =
        TextSelection.fromPosition(TextPosition(offset: start));
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
    RegExpMatch? matchElement = hashtagMatches.firstWhereOrNull(
        (element) => start > element.start && end <= element.end);
    if (matchElement != null) {
      onShowHashtagSearchField(matchElement);
    } else {
      onHideHashtagSearchField();
    }
  }

  @override
  void initState() {
    hashtagMatchStreamController = StreamController<List<RegExpMatch>>();
    hashtagMatchStream = hashtagMatchStreamController.stream;

    hashtagSearchStreamController = StreamController<RegExpMatch?>();
    hashtagSearchStream =
        hashtagSearchStreamController.stream.asBroadcastStream();

    if (widget.arguments.hashtagMetaName != null) {
      String text = " #${widget.arguments.hashtagMetaName}";
      skillMessage = text;
      messageTextController = TextEditingController(text: text);
      onFilterHashtagFromMessage(messageTextController.text);
    } else {
      messageTextController = TextEditingController();
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
    hashtagMatchStreamController.close();
    hashtagSearchStreamController.close();
    messageTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const AppBarBackButton(),
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
                children: [
                  SizedBox(
                    height: 40.w,
                    child: OutlineTextField(
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
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
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
                  SizedBox(height: 20.w),
                  Row(
                    children: [
                      const Text("Tags:"),
                      SizedBox(
                        width: 8.w,
                      ),
                      Expanded(
                        child: StreamBuilder(
                            stream: hashtagMatchStream,
                            builder: (BuildContext context,
                                AsyncSnapshot<List<RegExpMatch>> snapshot) {
                              if (snapshot.hasData &&
                                  snapshot.data!.isNotEmpty) {
                                return Wrap(
                                  spacing: 8.w,
                                  children: List.generate(snapshot.data!.length,
                                      (index) {
                                    RegExpMatch element = snapshot.data![index];
                                    String tag = element
                                        .group(0)!
                                        .trim()
                                        .replaceFirst("#", '')
                                        .toLowerCase();
                                    return InputChip(
                                        visualDensity: const VisualDensity(
                                            horizontal: 0.0, vertical: -2),
                                        label: Text(
                                          tag,
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                        backgroundColor: kPrimaryOrange,
                                        deleteIcon: const Icon(
                                          Icons.close,
                                          color: Colors.white,
                                        ),
                                        onDeleted: () {
                                          onFixMessageWhenRemoveTag(
                                              element.start, element.end);
                                        },
                                        onPressed: () {
                                          onFixMessageWhenRemoveTag(
                                              element.start, element.end);
                                        });
                                  }),
                                );
                              } else {
                                return const SizedBox.shrink();
                              }
                            }),
                      ),
                    ],
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
              hashtagSearchStream: hashtagSearchStream,
              onTapHashtag: () {},
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
    );
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
              Get.back();
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
                  ? () {}
                  : null,
              child: Row(
                children: [
                  Icon(
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
