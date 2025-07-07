import 'package:flutter/material.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';

class OnboardingPage extends StatelessWidget {
  final String title, desc, image;
  const OnboardingPage({
    super.key,
    required this.title,
    required this.desc,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          verticalSpace(40),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 180,
                height: 180,
                decoration: const BoxDecoration(
                  color: Color(0xFF00C896),
                  shape: BoxShape.circle,
                ),
              ),
              ClipOval(
                child: Image.asset(
                  image,
                  width: 380,
                  height: 380,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          verticalSpace(100),
          Text(
            title,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          verticalSpace(5),
          Text(
            desc,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
