import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/name_icon_mapping.dart';
import 'package:get/get.dart';

class CreateHashtagModal extends StatefulWidget {
  const CreateHashtagModal({Key? key}) : super(key: key);

  @override
  State<CreateHashtagModal> createState() => _CreateHashtagModalState();
}

class _CreateHashtagModalState extends State<CreateHashtagModal> {
  String hashtag = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 1,
        child: Container(
          width: 280.w,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.w, horizontal: 18.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    FaIcon(faIconNameMapping['solid calculator']),
                    TextField(
                      decoration:
                          const InputDecoration(label: Text("Find a icon")),
                      onChanged: (value) {
                        setState(() {
                          hashtag = value;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              Colors.grey[600]!),
                        ),
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text("Cancel")),
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text("Add"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
