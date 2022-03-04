import 'package:flutter/material.dart';
import 'package:together_app/components/alter_scaffold.dart';

class SettingsScreen extends StatelessWidget {
  static String routeName = '/settings_screen';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlterScaffold(
      body: Center(
        child: Text('This is $routeName'),
      ),
    );
  }
}
