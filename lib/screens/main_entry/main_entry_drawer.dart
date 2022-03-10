import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:together_app/screens/main_entry/main_entry_screen.dart';

import 'package:together_app/utils/constants.dart';

class MainEntryDrawer extends StatelessWidget {
  const MainEntryDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 110.h + MediaQuery.of(context).viewPadding.top,
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).viewPadding.top,
              left: 20.w,
              right: 20.w,
            ),
            color: kPrimaryBlue,
            child: Row(
              children: [
                Container(
                  height: 70.h,
                  width: 70.h,
                  color: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 40.h,
                    color: Colors.grey[300],
                  ),
                ),
                // SizedBox(width: 20.w),
                const Expanded(
                  child: ListTile(
                    title: Text("[Name]"),
                    subtitle: Text("[account name]"),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.share,
                      color: Colors.grey[200],
                    ))
              ],
            ),
          ),
          ...List.generate(kGetNavSideMenuInfoList().length, (i) {
            Map<String, dynamic> item = kGetNavSideMenuInfoList()[i];
            return ListTile(
              title: Text(item['name']),
              leading: Icon(item['icon']),
              onTap: () {
                /// cancel drawer
                Get.back();

                /// prevent route looping
                Get.offNamedUntil(item['route'],
                    (route) => route.settings.name == MainEntryScreen.routeName,
                    arguments: item['args']);
              },
            );
          })
        ],
      ),
    );
  }
}
