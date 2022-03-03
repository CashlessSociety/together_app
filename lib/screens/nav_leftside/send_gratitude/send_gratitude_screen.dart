import 'package:flutter/material.dart';
import 'package:together_app/components/alter_scaffold.dart';

class SendGratitudeScreen extends StatelessWidget {
  static String routeName = '/send_gratitude_screen';
  const SendGratitudeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlterScaffold(
      body: Center(
        child: Text('This is $routeName'),
      ),
    );
  }
}
