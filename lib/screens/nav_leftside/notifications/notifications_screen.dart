import 'package:flutter/material.dart';
import 'package:together_app/components/alter_scaffold.dart';

class NotificationsScreen extends StatelessWidget {
  static String routeName = '/notifications_screen';
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlterScaffold(
      body: Center(
        child: Text('This is $routeName'),
      ),
    );
  }
}
