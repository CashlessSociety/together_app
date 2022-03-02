import 'package:flutter/material.dart';

class AddRequestScreen extends StatelessWidget {
  static String routeName = '/add_request_screen';
  const AddRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is $routeName'),
      ),
    );
  }
}
