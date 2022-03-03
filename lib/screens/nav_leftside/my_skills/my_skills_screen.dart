import 'package:flutter/material.dart';
import 'package:together_app/components/alter_scaffold.dart';

class MySkillsScreen extends StatelessWidget {
  static String routeName = '/my_skill_screen';
  const MySkillsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlterScaffold(
      body: Center(
        child: Text('This is $routeName'),
      ),
    );
  }
}
