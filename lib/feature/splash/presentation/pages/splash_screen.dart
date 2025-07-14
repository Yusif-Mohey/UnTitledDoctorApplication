import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitleddoctor/core/utils/images_manager.dart';
import 'package:untitleddoctor/feature/auth/screen/login_screen.dart';
import 'package:untitleddoctor/feature/auth/screen/signup_screen.dart';
import '../../../onboarding/view/onboarding_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        // MaterialPageRoute(builder: (_) => OnboardingScreen()),
        MaterialPageRoute(builder: (_) => SignUpScreen()),
        // MaterialPageRoute(builder: (_) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00C896),
      body: Center(
        child: SvgPicture.asset(
          ImagesManager.logo,
          height: 200,
          color: Colors.white,
        ),
      ),
    );
  }
}
