import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarBackButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const AppBarBackButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed ??
          () {
            Get.back();
          },
      icon: const Icon(Icons.arrow_back),
    );
  }
}
