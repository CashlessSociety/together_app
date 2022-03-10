import 'dart:async';

import 'package:detectable_text_field/detector/sample_regular_expressions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:together_app/components/buttons.dart';
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
  String skillTitle = '';
  String skillMessage = '';
  bool isAvailable = true;
  late TextEditingController textController;
  bool messageTextTapped = false;
  List<RegExpMatch> hashtagMatches = [];
  late StreamController<List<RegExpMatch>> hashtagMatchStreamController;
  late Stream<List<RegExpMatch>> hashtagMatchStream;

  onFilterHashtagFromMessage(String message) {
    hashtagMatches.clear();
    hashTagRegExp.allMatches(message).forEach((element) {
      hashtagMatches.add(element);
    });
    hashtagMatchStreamController.add(hashtagMatches);
  }

  onFixMessageWhenRemoveTag(int start, int end) {
    String text1 = textController.text.substring(0, start);
    String text2 =
        textController.text.substring(end, textController.text.length);
    textController.text = text1 + text2;
    textController.selection =
        TextSelection.fromPosition(TextPosition(offset: start));
  }

  @override
  void initState() {
    hashtagMatchStreamController = StreamController<List<RegExpMatch>>();
    hashtagMatchStream = hashtagMatchStreamController.stream;

    if (widget.arguments.hashtagMetaName != null) {
      textController =
          TextEditingController(text: " #${widget.arguments.hashtagMetaName}");
      onFilterHashtagFromMessage(textController.text);
    } else {
      textController = TextEditingController();
    }
    textController.addListener(() {
      onFilterHashtagFromMessage(textController.text);
    });
    super.initState();
  }

  @override
  void dispose() {
    hashtagMatchStreamController.close();
    textController.dispose();
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
                  OutlineTextField(
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
                  SizedBox(height: 20.w),
                  OutlineDetectableTextField(
                    controller: textController,
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
                    onDetectionTyped: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      setState(() {
                        skillMessage = value;
                      });
                    },
                    onTap: () {
                      /// should reset cursor position
                      if (widget.arguments.hashtagMetaName != null &&
                          !messageTextTapped) {
                        textController.selection = TextSelection.fromPosition(
                            const TextPosition(offset: 0));
                      }
                      messageTextTapped = true;
                    },
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
                                        .replaceFirst("#", '');
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
              onPressed: skillTitle != '' && skillMessage != '' ? () {} : null,
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
