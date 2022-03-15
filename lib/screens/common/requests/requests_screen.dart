import 'package:flutter/material.dart';

class RequestsScreen extends StatelessWidget {
  final String userId;
  final SliverOverlapInjector sliverOverlapInjector;
  final double viewHeight;

  static String routeName = '/requests_screen';
  const RequestsScreen({
    Key? key,
    required this.userId,
    required this.sliverOverlapInjector,
    required this.viewHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is $routeName'),
      ),
    );
  }
}
