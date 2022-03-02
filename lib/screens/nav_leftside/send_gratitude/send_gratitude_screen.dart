import 'package:flutter/material.dart';

class SendGratitudeScreen extends StatelessWidget {
  static String routeName = '/send_gratitude_screen';
  const SendGratitudeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is $routeName'),
      ),
    );
  }
}
