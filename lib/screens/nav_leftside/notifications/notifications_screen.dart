import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  static String routeName = '/notifications_screen';
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is $routeName'),
      ),
    );
  }
}
