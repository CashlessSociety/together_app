import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static String routeName = '/settings_screen';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is $routeName'),
      ),
    );
  }
}
