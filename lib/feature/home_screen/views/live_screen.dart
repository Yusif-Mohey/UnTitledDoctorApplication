import 'package:flutter/material.dart';
import 'package:untitleddoctor/core/utils/images_manager.dart';
import 'package:untitleddoctor/core/utils/value_manager.dart';
import 'package:untitleddoctor/feature/home_screen/widgets/live_doctor_comment_screen.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(ImagesManager.liveImage, fit: BoxFit.cover),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(0.0),
                  Colors.black.withOpacity(0.4),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppPadding.p15),
            child: LiveDoctorCommentScreen(),
          ),
        ],
      ),
    );
  }
}
