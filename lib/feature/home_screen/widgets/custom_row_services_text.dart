import 'package:flutter/material.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';
import '../../../core/utils/color_manager.dart';

class CustomRowServicesText extends StatelessWidget {
  const CustomRowServicesText({
    super.key,
    required this.num,
    required this.text,
  });
  final String num;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          num,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 20,
            color: ColorManager.primaryColor,
          ),
        ),
        horizontalSpace(10),
        Text(text, style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
