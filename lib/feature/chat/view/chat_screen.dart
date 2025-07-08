import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitleddoctor/core/utils/images_manager.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';
import 'package:untitleddoctor/core/utils/value_manager.dart';
import '../widget/fack_message.dart';
import '../widget/message_widget.dart';
import '../widget/row_text_form_field_chat.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: AppPadding.p8),
              child: SizedBox(
                height: 60.h,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios, color: Colors.blue),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            ImagesManager.popularDoctor,
                          ),
                          maxRadius: 22,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. Fillerup Grab',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'tap here for contact info',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Icon(Icons.video_call, color: Colors.blue, size: 30),
                        horizontalSpace(AppSize.s15),
                        Icon(Icons.call, color: Colors.blue, size: 30),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.grey.shade300),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                    itemCount: chatMessages.length,
                    itemBuilder:
                        (_, i) => MassageWidget(massage: chatMessages[i]),
                    separatorBuilder: (_, __) => verticalSpace(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RowTextFormFieldChat(),
            ),
          ],
        ),
      ),
    );
  }
}
