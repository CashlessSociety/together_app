import 'package:flutter/material.dart';

class RequestsScreen extends StatelessWidget {
  final String userId;
  static String routeName = '/requests_screen';
  const RequestsScreen({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is $routeName'),
      ),
    );
  }
}
