import 'package:flutter/material.dart';

Future<void> displaySnack(BuildContext context, String message) async {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    duration: const Duration(milliseconds: 1000),
    content: Text(message),
  ));
}
