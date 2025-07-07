import 'package:flutter/material.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';

class RowTextFormFieldChat extends StatelessWidget {
  const RowTextFormFieldChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        children: [
          Icon(Icons.add, color: Colors.blue, size: 30),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade500,
                    width: 1.8,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
              ),
            ),
          ),
          horizontalSpace(10),
          Icon(Icons.camera_alt_outlined, color: Colors.blue),
          horizontalSpace(15),
          Icon(Icons.mic, color: Colors.blue),
        ],
      ),
    );
  }
}
