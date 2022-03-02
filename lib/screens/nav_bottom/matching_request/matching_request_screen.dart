import 'package:flutter/material.dart';

class MatchingRequestScreen extends StatelessWidget {
  static String routeName = '/matching_request_screen';
  const MatchingRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is $routeName'),
      ),
    );
  }
}
