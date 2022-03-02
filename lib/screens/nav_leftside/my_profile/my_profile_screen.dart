import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  static String routeName = '/my_profile_screen';
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is $routeName'),
      ),
    );
  }
}
