import 'package:flutter/material.dart';

class NetworkFeedScreen extends StatelessWidget {
  static String routeName = '/network_feed_screen';
  const NetworkFeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is $routeName'),
      ),
    );
  }
}
