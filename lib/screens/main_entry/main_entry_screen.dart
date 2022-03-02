import 'package:flutter/material.dart';
import 'package:together_app/screens/main_entry/main_entry_drawer.dart';
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
import 'package:together_app/utils/constants.dart';

class MainEntryScreen extends StatefulWidget {
  static String routeName = '/main_entry_screen';
  const MainEntryScreen({Key? key}) : super(key: key);

  @override
  State<MainEntryScreen> createState() => _MainEntryScreenState();
}

class _MainEntryScreenState extends State<MainEntryScreen> {
  PageController pageController = PageController();
  int pageIndex = 0;
  late List<Widget> screenListOnly;
  List<Map<String, dynamic>> screenMapList = [
    /// bottom screen
    {
      'route': GratitudeWallScreen.routeName,
      'widget': const GratitudeWallScreen()
    },
    {'route': SocialGraphScreen.routeName, 'widget': const SocialGraphScreen()},
    {
      'route': MatchingRequestScreen.routeName,
      'widget': const MatchingRequestScreen()
    },
    {'route': NetworkFeedScreen.routeName, 'widget': const NetworkFeedScreen()},

    /// leftside screen
    {
      'route': NotificationsScreen.routeName,
      'widget': const NotificationsScreen()
    },
    {'route': MyProfileScreen.routeName, 'widget': const MyProfileScreen()},
    {'route': MySkillsScreen.routeName, 'widget': const MySkillsScreen()},
    {'route': AddRequestScreen.routeName, 'widget': const AddRequestScreen()},
    {
      'route': SendGratitudeScreen.routeName,
      'widget': const SendGratitudeScreen()
    },
    {'route': SettingsScreen.routeName, 'widget': const SettingsScreen()},
  ];

  void onJumpToPage(int index) {
    if (pageIndex != index) {
      pageController.jumpToPage(index);
      setState(() {
        pageIndex = index;
      });
    }
  }

  void onSideItemTapped(String route) {
    int index = screenMapList.indexWhere(
        (Map<String, dynamic> element) => element['route'] == route);
    if (index != -1) {
      onJumpToPage(index);
    }
  }

  @override
  void initState() {
    screenListOnly =
        List.generate(screenMapList.length, (i) => screenMapList[i]['widget']);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryBlue,
        title: const Text('The Together App'),
      ),
      drawer: MainEntryDrawer(
        onTapItem: onSideItemTapped,
      ),
      body: Center(
        child: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: screenListOnly),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: kBottomNavigationBarItems,
        currentIndex: pageIndex > 3 ? 0 : pageIndex,
        onTap: onJumpToPage,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: pageIndex > 3
            ? Colors.grey[600]
            : kBottomNavigationBarItemColors[pageIndex],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey[600],
      ),
    );
  }
}
