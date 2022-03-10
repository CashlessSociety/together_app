import 'package:flutter/material.dart';

class GratitudeScreen extends StatelessWidget {
  final String userId;
  static String routeName = '/gratitude_screen';
  const GratitudeScreen({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is $routeName'),
      ),
    );
  }
}
