import 'package:flutter/material.dart';
import 'package:together_app/components/alter_scaffold.dart';
import 'package:together_app/components/buttons.dart';
import 'package:together_app/utils/constants.dart';

class NotificationsScreen extends StatelessWidget {
  static String routeName = '/notifications_screen';
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlterScaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryBlue,
        title: const Text('Notification'),
        leading: const AppBarBackButton(),
      ),
      body: Center(
        child: Text('This is $routeName'),
      ),
    );
  }
}
