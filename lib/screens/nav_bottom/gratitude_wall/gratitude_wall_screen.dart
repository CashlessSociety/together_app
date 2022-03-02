import 'package:flutter/material.dart';

class GratitudeWallScreen extends StatelessWidget {
  static String routeName = '/gratitude_wall_screen';
  const GratitudeWallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is $routeName'),
      ),
    );
  }
}
