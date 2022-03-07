import 'package:flutter/material.dart';
import 'package:together_app/components/modals.dart';

Future showCreateHashtagDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return const CreateHashtagModal();
      });
}
