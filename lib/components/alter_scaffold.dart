import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:together_app/screens/main_entry/main_entry_drawer.dart';
import 'package:together_app/screens/main_entry/main_entry_screen.dart';
import 'package:together_app/utils/constants.dart';
import 'package:together_app/utils/providers.dart';

class AlterScaffold extends StatefulWidget {
  final AppBar? appBar;
  final Widget? body;
  final Widget? drawer;
  final BottomNavigationBar? bottomNavigationBar;
  final bool enableBottomNavigation;

  const AlterScaffold({
    Key? key,
    this.appBar,
    this.body,
    this.drawer,
    this.bottomNavigationBar,
    this.enableBottomNavigation = false,
  }) : super(key: key);

  @override
  State<AlterScaffold> createState() => _AlterScaffoldState();
}

class _AlterScaffoldState extends State<AlterScaffold> {
  late AppBar defaultAppBar;
  BottomNavigationBar? defaultBottomNavigationBar;
  late Widget defaultEntryDrawer;

  void onBottomTabClick(int index) {
    Provider.of<BottomNavNotifier>(context, listen: false)
        .updateIndex(index: index, shouldNotify: true);
    Get.until((route) => route.settings.name == MainEntryScreen.routeName);
  }

  @override
  void initState() {
    /// default alter app bar
    defaultAppBar = AppBar(
      backgroundColor: kPrimaryYellow,
      foregroundColor: kPrimaryBlack,
      title: Text(
        'The Together App',
        style: TextStyle(
          color: kPrimaryBlack,
        ),
      ),
    );

    if (widget.enableBottomNavigation) {
      /// default alter bottom nav
      defaultBottomNavigationBar = BottomNavigationBar(
        items: kBottomNavigationBarItems,
        currentIndex: 0,
        onTap: onBottomTabClick,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.grey[600],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey[600],
      );
    }

    /// default alter drawer
    defaultEntryDrawer = const MainEntryDrawer();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar ?? defaultAppBar,
      drawer: widget.drawer ?? defaultEntryDrawer,
      body: widget.body,
      bottomNavigationBar: defaultBottomNavigationBar,
    );
  }
}
