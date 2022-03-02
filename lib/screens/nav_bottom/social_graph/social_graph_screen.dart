import 'package:flutter/material.dart';

class SocialGraphScreen extends StatelessWidget {
  static String routeName = 'social_graph_screen';
  const SocialGraphScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is $routeName'),
      ),
    );
  }
}
