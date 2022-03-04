import 'package:flutter/material.dart';
import 'package:together_app/screens/nav_leftside/add_request/add_request_screen.dart';
import 'package:together_app/screens/nav_leftside/my_profile/my_profile_screen.dart';
import 'package:together_app/screens/nav_leftside/my_skills/my_skills_screen.dart';
import 'package:together_app/screens/nav_leftside/notifications/notifications_screen.dart';
import 'package:together_app/screens/nav_leftside/send_gratitude/send_gratitude_screen.dart';
import 'package:together_app/screens/nav_leftside/settings/settings_screen.dart';

Color kPrimaryBlue = const Color(0xff1b9eca);
Color kPrimaryRed = const Color(0xffF7581E);

List<Map<String, dynamic>> kNavSideMenuInfoList = [
  {
    'name': 'Notifications',
    'icon': Icons.notifications,
    'route': NotificationsScreen.routeName
  },
  {
    'name': 'My Profile',
    'icon': Icons.person,
    'route': MyProfileScreen.routeName
  },
  {'name': 'My Skills', 'icon': Icons.work, 'route': MySkillsScreen.routeName},
  {
    'name': 'Add Request',
    'icon': Icons.add_box,
    'route': AddRequestScreen.routeName
  },
  {
    'name': 'Send Gratitude',
    'icon': Icons.handshake,
    'route': SendGratitudeScreen.routeName
  },
  {
    'name': 'Settings',
    'icon': Icons.settings,
    'route': SettingsScreen.routeName
  },
];

List<BottomNavigationBarItem> kBottomNavigationBarItems = [
  const BottomNavigationBarItem(
    icon: Icon(Icons.favorite),
    label: "Gratitude Wall",
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.people),
    label: "Social Graph",
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.local_fire_department_rounded),
    label: "Find Requests",
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.newspaper),
    label: "Network Feed",
  ),
];

List<Color> kBottomNavigationBarItemColors = [
  Colors.red,
  Colors.blue,
  Colors.orange,
  Colors.green
];
