import 'package:flutter/material.dart';
import 'package:untitleddoctor/core/utils/color_manager.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';
import 'package:untitleddoctor/core/utils/value_manager.dart';
import '../widget/container_of_chat.dart';
import 'chat_screen.dart';

class MeanChatScreen extends StatelessWidget {
  const MeanChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: AppPadding.p15, top: AppPadding.p10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Chats',
                style: TextStyle(
                  fontSize: AppSize.s40,
                  fontWeight: FontWeight.bold,
                  color: ColorManager.black,
                ),
              ),
              verticalSpace(AppSize.s20),
              Expanded(
                child: ListView.separated(
                  itemBuilder:
                      (context, index) => ContainerOfChat(
                        ontap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ChatScreen(),
                            ),
                          );
                        },
                      ),
                  separatorBuilder:
                      (context, index) => verticalSpace(AppSize.s25),
                  itemCount: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
