import 'package:flutter/material.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';

import '../data/model/massage_model.dart';

class MassageWidget extends StatelessWidget {
  const MassageWidget({super.key, required this.massage});

  final MessageModel massage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          massage.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: (massage.isMe) ? Color(0xffDCF7C5) : Colors.white,

            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Row(
            children: [
              Text(
                massage.massage,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              horizontalSpace(15),
              Text(massage.time, style: TextStyle(color: Colors.grey)),
              if (massage.isMe) Icon(Icons.check, color: Colors.blue),
            ],
          ),
        ),
      ],
    );
  }
}
