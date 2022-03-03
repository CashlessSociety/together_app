import 'package:flutter/material.dart';
import 'package:together_app/screens/nav_bottom/social_graph/social_graph_user_list.dart';

class SocialGraphScreen extends StatelessWidget {
  static String routeName = 'social_graph_screen';
  const SocialGraphScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SocialGraphUserList(),
    );
  }
}
