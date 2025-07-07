import 'package:flutter/material.dart';

class RowStar extends StatelessWidget {
  const RowStar({super.key, this.size});
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star, color: Colors.amber, size: 15),
        Icon(Icons.star, color: Colors.amber, size: 15),
        Icon(Icons.star, color: Colors.amber, size: 15),
        Icon(Icons.star, color: Colors.amber, size: 15),
        Icon(Icons.star, color: Colors.amber, size: 15),
      ],
    );
  }
}
