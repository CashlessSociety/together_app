import 'package:flutter/material.dart';
import 'package:together_app/screens/common/profile/my_profile_screen.dart';
import 'package:together_app/screens/common/profile/other_profile_screen.dart';
import 'package:together_app/screens/common/profile/profile_edit_screen.dart';
import 'package:together_app/screens/common/skills/skills_edit_screen.dart';
import 'package:together_app/screens/main_entry/main_entry_screen.dart';
import 'package:together_app/screens/nav_bottom/gratitude_wall/gratitude_wall_screen.dart';
import 'package:together_app/screens/nav_bottom/matching_request/matching_request_screen.dart';
import 'package:together_app/screens/nav_bottom/social_graph/social_graph_view.dart';
import 'package:together_app/screens/nav_bottom/social_graph/social_graph_screen.dart';
import 'package:together_app/screens/nav_leftside/admin_portal/admin_contact_methods/admin_contact_methods_screen.dart';
import 'package:together_app/screens/nav_leftside/admin_portal/admin_manage_hashtags/admin_edit_hashtag_screen.dart';
import 'package:together_app/screens/nav_leftside/admin_portal/admin_manage_hashtags/admin_manage_hashtags_screen.dart';
import 'package:together_app/screens/nav_leftside/admin_portal/admin_manage_testers/admin_manage_testers_screen.dart';
import 'package:together_app/screens/nav_leftside/admin_portal/admin_portal_screen.dart';
import 'package:together_app/screens/nav_leftside/notifications/notifications_screen.dart';
import 'package:together_app/screens/nav_leftside/settings/settings_screen.dart';

Map<String, WidgetBuilder> getRoutes(BuildContext context) {
  return {
    '/main_entry_screen': (context) => const MainEntryScreen(),
    '/gratitude_wall_screen': (context) => const GratitudeWallScreen(),
    '/matching_request_screen': (context) => const MatchingRequestScreen(),
    '/social_graph_screen': (context) => const SocialGraphScreen(),
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
    '/admin_manage_testers_screen': (context) =>
        const AdminManageTestersScreen(),
    '/admin_contact_methods_screen': (context) =>
        const AdminContactMethodsScreen(),
    '/my_profile_screen': (context) => const MyProfileScreen(),
    '/other_profile_screen': (context) => OtherProfileScreen(
          arguments: ModalRoute.of(context)!.settings.arguments!
              as OtherProfileScreenArguments,
        ),
    '/profile_edit_screen': (context) => ProfileEditScreen(
          arguments: ModalRoute.of(context)!.settings.arguments!
              as ProfileEditScreenArguments,
        ),
    '/social_graph_view': (context) => SocialGraphView(
          arguments: ModalRoute.of(context)!.settings.arguments!
              as SocialGraphViewArguments,
        ),
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

class OtherProfileScreenArguments {
  final String otherUserId;

  OtherProfileScreenArguments({
    required this.otherUserId,
  });
}

class ProfileEditScreenArguments {
  final String userId;

  ProfileEditScreenArguments({
    required this.userId,
  });
}

class SkillsEditScreenArguments {
  final String? hashtagId;
  final String? hashtagName;
  final String? skillId;
  final String? skillTitle;
  final String? skillMessage;
  final bool? isAvailable;
  final List<String>? skillHashtagList;

  SkillsEditScreenArguments({
    this.hashtagId,
    this.hashtagName,
    this.skillId,
    this.skillTitle,
    this.skillMessage,
    this.isAvailable,
    this.skillHashtagList,
  });
}

class SocialGraphViewArguments {
  final String htmlAssetPath;

  SocialGraphViewArguments({
    required this.htmlAssetPath,
  });
}
