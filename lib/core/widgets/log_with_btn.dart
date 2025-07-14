import 'package:flutter/material.dart';

class LogWithBtn extends StatelessWidget {
  const LogWithBtn({
    super.key,
    required this.title,
    required this.onTap,
    required this.icon,
  });
  final String title;
  final VoidCallback onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          side: const BorderSide(color: Colors.grey),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
        icon: Icon(icon),
        label: Text(title),
        onPressed: onTap,
      ),
    );
  }
}
