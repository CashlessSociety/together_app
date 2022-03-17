import 'package:flutter/material.dart';
import 'package:together_app/screens/common/profile/my_profile_screen.dart';

class GratitudeWallScreen extends StatefulWidget {
  static String routeName = '/gratitude_wall_screen';
  const GratitudeWallScreen({Key? key}) : super(key: key);

  @override
  State<GratitudeWallScreen> createState() => _GratitudeWallScreenState();
}

class _GratitudeWallScreenState extends State<GratitudeWallScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const MyProfileScreen();
  }

  @override
  bool get wantKeepAlive => true;
}
