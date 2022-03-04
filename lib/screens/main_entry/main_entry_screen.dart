import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:together_app/screens/main_entry/main_entry_drawer.dart';
import 'package:together_app/screens/nav_bottom/gratitude_wall/gratitude_wall_screen.dart';
import 'package:together_app/screens/nav_bottom/matching_request/matching_request_screen.dart';
import 'package:together_app/screens/nav_bottom/network_feed/network_feed_screen.dart';
import 'package:together_app/screens/nav_bottom/social_graph/social_graph_screen.dart';
import 'package:together_app/utils/constants.dart';
import 'package:together_app/utils/providers.dart';

class MainEntryScreen extends StatefulWidget {
  static String routeName = '/main_entry_screen';
  const MainEntryScreen({Key? key}) : super(key: key);

  @override
  State<MainEntryScreen> createState() => _MainEntryScreenState();
}

class _MainEntryScreenState extends State<MainEntryScreen> {
  PageController pageController = PageController();
  int pageIndex = 0;
  bool isDrawerOpened = false;

  void updateIndexState(index) {
    setState(() {
      pageIndex = index;
    });
  }

  /// triggered from bottom nav screens
  void onHandleInternalTabClick(index) {
    if (pageIndex != index) {
      pageController.jumpToPage(index);
      Provider.of<BottomNavNotifier>(context, listen: false)
          .updateIndex(index: index);
      updateIndexState(index);
    }
  }

  /// triggered from NONE bottom nav screens
  void onHandleExternalTabClick(index) {
    /// close the drawer
    if (isDrawerOpened && Get.currentRoute == MainEntryScreen.routeName) {
      Get.back();
    }
    if (pageIndex != index) {
      pageController.jumpToPage(index);
      updateIndexState(index);
    }
  }

  @override
  void initState() {
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
      drawer: const MainEntryDrawer(),
      onDrawerChanged: (bool isOpened) {
        isDrawerOpened = isOpened;
      },
      body: Consumer<BottomNavNotifier>(
        builder: (context, provider, child) {
          WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
            onHandleExternalTabClick(provider.currentIndex);
          });
          return child!;
        },
        child: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              GratitudeWallScreen(),
              SocialGraphScreen(),
              MatchingRequestScreen(),
              NetworkFeedScreen(),
            ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: kBottomNavigationBarItems,
        currentIndex: pageIndex,
        onTap: onHandleInternalTabClick,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kBottomNavigationBarItemColors[pageIndex],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey[600],
      ),
    );
  }
}
