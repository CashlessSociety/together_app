import 'package:flutter/material.dart';
import 'package:together_app/screens/common/profile/profile_info.dart';
import 'package:together_app/utils/routes.dart';

class OtherProfileScreen extends StatelessWidget {
  static String routeName = '/other_profile_screen';
  final OtherProfileScreenArguments arguments;
  const OtherProfileScreen({
    Key? key,
    required this.arguments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileInfo(
      userId: arguments.otherUserId,
      isOwner: false,
    );
  }
}
