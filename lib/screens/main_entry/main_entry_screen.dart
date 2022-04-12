import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:together_app/screens/nav_bottom/gratitude_wall/gratitude_wall_screen.dart';
import 'package:together_app/screens/nav_bottom/matching_request/matching_request_screen.dart';
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
      body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            GratitudeWallScreen(),
            SocialGraphScreen(),
            MatchingRequestScreen(),
          ]),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 22.w,
        items: kBottomNavigationBarItems,
        currentIndex: pageIndex,
        onTap: onHandleInternalTabClick,
        type: BottomNavigationBarType.fixed,
        backgroundColor: kPrimaryYellow,
        selectedItemColor: kPrimaryBlack,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
