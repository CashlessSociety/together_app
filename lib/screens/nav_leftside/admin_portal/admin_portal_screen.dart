import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:together_app/components/alter_scaffold.dart';
import 'package:together_app/components/buttons.dart';
import 'package:together_app/screens/nav_leftside/admin_portal/admin_manage_hashtags/admin_manage_hashtags_screen.dart';
import 'package:together_app/screens/nav_leftside/admin_portal/admin_manage_testers/admin_manage_testers_screen.dart';
import 'package:together_app/utils/constants.dart';

class AdminPortalScreen extends StatefulWidget {
  static String routeName = "/admin_portal_screen";

  const AdminPortalScreen({Key? key}) : super(key: key);

  @override
  State<AdminPortalScreen> createState() => _AdminPortalScreenState();
}

class _AdminPortalScreenState extends State<AdminPortalScreen> {
  @override
  Widget build(BuildContext context) {
    return AlterScaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryBlue,
        title: const Text('Admin Portal'),
        leading: const AppBarBackButton(),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.tag),
            title: const Text("Manage Hashtags"),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Get.toNamed(AdminManageHashtagsScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.tag),
            title: const Text("Manage Test Data"),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Get.toNamed(AdminManageTestersScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}
