import 'package:flutter/material.dart';

void showCustomLoginSnackBar(
  BuildContext context,
  String message,
  bool isSuccess,
) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
          const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
          const SizedBox(width: 16),
          Text(message, style: const TextStyle(color: Colors.white)),
        ],
      ),
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      backgroundColor: isSuccess ? const Color(0xFF0EBE7F) : Colors.red,
    ),
  );
}
