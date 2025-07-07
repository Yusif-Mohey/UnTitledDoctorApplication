import 'package:flutter/material.dart';

class RowTitel extends StatelessWidget {
  const RowTitel({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 23),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Spacer(),
        Text('See all', style: TextStyle(color: Colors.grey)),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_forward_ios, size: 15),
        ),
      ],
    );
  }
}
