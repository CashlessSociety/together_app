import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';
import 'package:together_app/screens/common/profile/profile_form.dart';
import 'package:together_app/screens/common/profile/profile_info.dart';
import 'package:together_app/utils/providers.dart';

class MyProfileScreen extends StatefulWidget {
  static String routeName = '/my_profile_screen';
  const MyProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LoginStateRefresher>(builder: (context, provider, child) {
      return FutureBuilder(
          future: const FlutterSecureStorage().read(key: 'userId'),
          builder: (context, AsyncSnapshot<String?> snapshot) {
            if (snapshot.hasData && snapshot.data != null) {
              return ProfileInfo(
                userId: snapshot.data!,
                isOwner: true,
              );
            } else {
              return const ProfileTestForm();
            }
          });
    });
  }
}
