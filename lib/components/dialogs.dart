import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:together_app/components/modals.dart';

Future showCreateHashtagDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return const CreateHashtagModal();
      });
}

Future<bool?> showTwoOptionDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Confirm delete"),
          actions: [
            TextButton(
              child: const Text(
                'Yes',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                Get.back(result: true);
              },
            ),
            TextButton(
              child: const Text(
                'No',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Get.back(result: false);
              },
            ),
          ],
        );
      });
}
