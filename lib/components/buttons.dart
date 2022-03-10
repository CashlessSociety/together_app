import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.back();
      },
      icon: const Icon(Icons.arrow_back),
    );
  }
}
