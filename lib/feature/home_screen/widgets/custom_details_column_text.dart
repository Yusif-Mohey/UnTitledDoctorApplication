import 'package:flutter/material.dart';

class DetailsColumnText extends StatelessWidget {
  const DetailsColumnText({
    super.key,
    required this.title,
    required this.suptitel,
  });
  final String title;
  final String suptitel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(suptitel, style: TextStyle(fontSize: 13, color: Colors.grey)),
      ],
    );
  }
}
