import 'package:flutter/material.dart';

class MySkillsScreen extends StatelessWidget {
  static String routeName = '/my_skill_screen';
  const MySkillsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is $routeName'),
      ),
    );
  }
}
