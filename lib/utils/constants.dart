import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:together_app/screens/nav_leftside/admin_portal/admin_portal_screen.dart';
import 'package:together_app/screens/nav_leftside/notifications/notifications_screen.dart';
import 'package:together_app/screens/nav_leftside/settings/settings_screen.dart';

Color kPrimaryBlue = const Color(0xff1b9eca);
Color kPrimaryRed = const Color(0xffF7581E);
Color kPrimaryOrange = const Color(0xffFF8427);
Color kDeepBlue = const Color(0xff134074);

FaIcon faHashtagPlaceholderIcon = FaIcon(
  FontAwesomeIcons.hashtag,
  color: Colors.grey[300],
);

List<Map<String, dynamic>> kGetNavSideMenuInfoList(
    {dynamic args, bool isAdmin = false}) {
  List<Map<String, dynamic>> menuList = [
    {
      'name': 'Notifications',
      'icon': Icons.notifications,
      'route': NotificationsScreen.routeName,
      'args': args,
    },
    {
      'name': 'Settings',
      'icon': Icons.settings,
      'route': SettingsScreen.routeName,
      'args': args,
    },
  ];
  // if (isAdmin) {
  menuList.add({
    'name': 'Admin Portal',
    'icon': Icons.admin_panel_settings,
    'route': AdminPortalScreen.routeName
  });
  // }
  return menuList;
}

List<BottomNavigationBarItem> kBottomNavigationBarItems = [
  const BottomNavigationBarItem(
    icon: FaIcon(FontAwesomeIcons.solidHeart),
    label: "Gratitude Wall",
  ),
  const BottomNavigationBarItem(
    icon: FaIcon(FontAwesomeIcons.users),
    label: "Social Graph",
  ),
  const BottomNavigationBarItem(
    icon: FaIcon(FontAwesomeIcons.handsHelping),
    label: "Find Requests",
  ),
];

List<Color> kBottomNavigationBarItemColors = [
  Colors.red,
  Colors.blue,
  Colors.orange,
  Colors.green
];
