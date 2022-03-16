import 'package:flutter/material.dart';
import 'package:together_app/screens/common/skills/skills_edit_screen.dart';
import 'package:together_app/screens/main_entry/main_entry_screen.dart';
import 'package:together_app/screens/nav_bottom/gratitude_wall/gratitude_wall_screen.dart';
import 'package:together_app/screens/nav_bottom/matching_request/matching_request_screen.dart';
import 'package:together_app/screens/nav_bottom/network_feed/network_feed_screen.dart';
import 'package:together_app/screens/nav_bottom/social_graph/social_graph_screen.dart';
import 'package:together_app/screens/nav_leftside/admin_portal/admin_manage_hashtags/admin_edit_hashtag_screen.dart';
import 'package:together_app/screens/nav_leftside/admin_portal/admin_manage_hashtags/admin_manage_hashtags_screen.dart';
import 'package:together_app/screens/nav_leftside/admin_portal/admin_portal_screen.dart';
import 'package:together_app/screens/nav_leftside/my_profile/my_profile_screen.dart';
import 'package:together_app/screens/nav_leftside/notifications/notifications_screen.dart';
import 'package:together_app/screens/nav_leftside/settings/settings_screen.dart';

Map<String, WidgetBuilder> getRoutes(BuildContext context) {
  return {
    '/main_entry_screen': (context) => const MainEntryScreen(),
    '/gratitude_wall_screen': (context) => const GratitudeWallScreen(),
    '/matching_request_screen': (context) => const MatchingRequestScreen(),
    '/network_feed_screen': (context) => const NetworkFeedScreen(),
    '/social_graph_screen': (context) => const SocialGraphScreen(),
    '/my_profile_screen': (context) => MyProfileScreen(
          arguments: ModalRoute.of(context)!.settings.arguments!
              as MyProfileScreenArguments,
        ),
    '/skills_edit_screen': (context) => SkillsEditScreen(
          arguments: ModalRoute.of(context)!.settings.arguments!
              as SkillsEditScreenArguments,
        ),
    '/notifications_screen': (context) => const NotificationsScreen(),
    '/settings_screen': (context) => const SettingsScreen(),
    '/admin_portal_screen': (context) => const AdminPortalScreen(),
    '/admin_edit_hashtag_screen': (context) => AdminEditHashtagScreen(
          arguments: ModalRoute.of(context)!.settings.arguments!
              as AdminEditHashtagScreenArguments,
        ),
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

class MyProfileScreenArguments {
  final int? focusedTab;

  MyProfileScreenArguments({
    this.focusedTab,
  });
}

class SkillsEditScreenArguments {
  final String? hashtagMetaId;
  final String? hashtagMetaName;
  final String? skillId;
  final String? skillTitle;
  final String? skillMessage;
  final bool? isAvailable;
  final List<String>? skillHashtagList;

  SkillsEditScreenArguments({
    this.hashtagMetaId,
    this.hashtagMetaName,
    this.skillId,
    this.skillTitle,
    this.skillMessage,
    this.isAvailable,
    this.skillHashtagList,
  });
}
