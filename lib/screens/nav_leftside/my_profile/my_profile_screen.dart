import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:together_app/components/alter_scaffold.dart';
import 'package:together_app/screens/nav_leftside/my_profile/my_profile_form.dart';
import 'package:together_app/screens/nav_leftside/my_profile/my_profile_info.dart';
import 'package:together_app/utils/constants.dart';

class MyProfileScreen extends StatelessWidget {
  static String routeName = '/my_profile_screen';
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlterScaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryRed,
        title: const Text('My Profile'),
      ),
      body: FutureBuilder(
          future: const FlutterSecureStorage().read(key: 'userId'),
          builder: (context, AsyncSnapshot<String?> snapshot) {
            if (snapshot.hasData && snapshot.data != null) {
              return MyProfileInfo(userId: snapshot.data!);
            } else {
              return const MyProfileTestForm();
            }
          }),
    );
  }
}
