import 'package:flutter/material.dart';
import 'package:together_app/screens/main_entry/main_entry_screen.dart';
import 'package:together_app/screens/nav_bottom/gratitude_wall/gratitude_wall_screen.dart';
import 'package:together_app/screens/nav_bottom/matching_request/matching_request_screen.dart';
import 'package:together_app/screens/nav_bottom/network_feed/network_feed_screen.dart';
import 'package:together_app/screens/nav_bottom/social_graph/social_graph_screen.dart';
import 'package:together_app/screens/nav_leftside/add_request/add_request_screen.dart';
import 'package:together_app/screens/nav_leftside/my_profile/my_profile_screen.dart';
import 'package:together_app/screens/nav_leftside/my_skills/my_skills_screen.dart';
import 'package:together_app/screens/nav_leftside/notifications/notifications_screen.dart';
import 'package:together_app/screens/nav_leftside/send_gratitude/send_gratitude_screen.dart';
import 'package:together_app/screens/nav_leftside/settings/settings_screen.dart';

MaterialPageRoute? generateRoutes(settings) {
  switch (settings.name) {
    case '/main_entry_screen':
      return MaterialPageRoute(
        builder: (context) {
          return const MainEntryScreen();
        },
      );
    case '/gratitude_wall_screen':
      return MaterialPageRoute(
        builder: (context) {
          return const GratitudeWallScreen();
        },
      );

    case '/matching_request_screen':
      return MaterialPageRoute(
        builder: (context) {
          return const MatchingRequestScreen();
        },
      );

    case '/network_feed_screen':
      return MaterialPageRoute(
        builder: (context) {
          return const NetworkFeedScreen();
        },
      );

    case '/social_graph_screen':
      return MaterialPageRoute(
        builder: (context) {
          return const SocialGraphScreen();
        },
      );

    case '/add_request_screen':
      return MaterialPageRoute(
        builder: (context) {
          return const AddRequestScreen();
        },
      );

    case '/my_profile_screen':
      return MaterialPageRoute(
        builder: (context) {
          return const MyProfileScreen();
        },
      );

    case '/my_skill_screen':
      return MaterialPageRoute(
        builder: (context) {
          return const MySkillsScreen();
        },
      );

    case '/notifications_screen':
      return MaterialPageRoute(
        builder: (context) {
          return const NotificationsScreen();
        },
      );

    case '/send_gratitude_screen':
      return MaterialPageRoute(
        builder: (context) {
          return const SendGratitudeScreen();
        },
      );

    case '/settings_screen':
      return MaterialPageRoute(
        builder: (context) {
          return const SettingsScreen();
        },
      );
    default:
      return null;
  }
}
