import 'package:flutter/material.dart';
import 'package:together_app/components/alter_scaffold.dart';

class AddRequestScreen extends StatelessWidget {
  static String routeName = '/add_request_screen';
  const AddRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlterScaffold(
      body: Center(
        child: Text('This is $routeName'),
      ),
    );
  }
}
