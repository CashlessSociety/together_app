import 'package:flutter/material.dart';
import 'package:together_app/screens/main_entry/main_entry_screen.dart';
import 'package:together_app/screens/nav_bottom/gratitude_wall/gratitude_wall_screen.dart';
import 'package:together_app/screens/nav_bottom/matching_request/matching_request_screen.dart';
import 'package:together_app/screens/nav_bottom/network_feed/network_feed_screen.dart';
import 'package:together_app/screens/nav_bottom/social_graph/social_graph_screen.dart';
import 'package:together_app/screens/nav_leftside/add_request/add_request_screen.dart';
import 'package:together_app/screens/nav_leftside/admin_portal/admin_manage_hashtags/admin_edit_hashtag_screen.dart';
import 'package:together_app/screens/nav_leftside/admin_portal/admin_manage_hashtags/admin_manage_hashtags_screen.dart';
import 'package:together_app/screens/nav_leftside/admin_portal/admin_portal_screen.dart';
import 'package:together_app/screens/nav_leftside/my_profile/my_profile_screen.dart';
import 'package:together_app/screens/nav_leftside/my_skills/my_skills_screen.dart';
import 'package:together_app/screens/nav_leftside/notifications/notifications_screen.dart';
import 'package:together_app/screens/nav_leftside/send_gratitude/send_gratitude_screen.dart';
import 'package:together_app/screens/nav_leftside/settings/settings_screen.dart';

Map<String, WidgetBuilder> getRoutes(BuildContext context) {
  return {
    '/main_entry_screen': (context) => const MainEntryScreen(),
    '/gratitude_wall_screen': (context) => const GratitudeWallScreen(),
    '/matching_request_screen': (context) => const MatchingRequestScreen(),
    '/network_feed_screen': (context) => const NetworkFeedScreen(),
    '/social_graph_screen': (context) => const SocialGraphScreen(),
    '/add_request_screen': (context) => const AddRequestScreen(),
    '/my_profile_screen': (context) => const MyProfileScreen(),
    '/my_skill_screen': (context) => const MySkillsScreen(),
    '/notifications_screen': (context) => const NotificationsScreen(),
    '/send_gratitude_screen': (context) => const SendGratitudeScreen(),
    '/settings_screen': (context) => const SettingsScreen(),
    '/admin_portal_screen': (context) => const AdminPortalScreen(),
    '/admin_edit_hashtag_screen': (context) => AdminEditHashtagScreen(
        arguments: ModalRoute.of(context)!.settings.arguments!
            as AdminEditHashtagScreenArguments),
    '/admin_manage_hashtags_screen': (context) =>
        const AdminManageHashtagsScreen(),
  };
}

class AdminEditHashtagScreenArguments {
  final String? id;
  final String? metaName;
  final String? iconName;
  final bool? blessed;

  AdminEditHashtagScreenArguments({
    this.id,
    this.metaName,
    this.iconName,
    this.blessed,
  });
}

/// not needed right now
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
