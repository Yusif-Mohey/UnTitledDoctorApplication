import 'package:flutter/material.dart';
import 'package:untitleddoctor/core/utils/images_manager.dart';
import 'package:untitleddoctor/core/utils/color_manager.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';
import '../../home_with_drawer/view/home_with_drawer.dart';
import 'on_boarding_view_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> _data = [
    {
      'title': 'Find Trusted Doctors',
      'desc':
          'Contrary to popular belief, Lorem Ipsum is not simply random text.',
      'image': ImagesManager.onboarding1,
    },
    {
      'title': 'Choose Best Doctors',
      'desc':
          'It has roots in a piece of classical Latin literature from 45 BC.',
      'image': ImagesManager.onboarding2,
    },
    {
      'title': 'Easy Appointments',
      'desc':
          'It has survived not only five centuries, but also the leap into electronic typesetting.',
      'image': ImagesManager.onboarding3,
    },
  ];

  void _nextPage() {
    if (_currentIndex < _data.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => HomeWithDrawer()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _data.length,
              onPageChanged: (index) => setState(() => _currentIndex = index),
              itemBuilder:
                  (context, index) => OnboardingPage(
                    image: _data[index]['image']!,
                    title: _data[index]['title']!,
                    desc: _data[index]['desc']!,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _data.length,
                    (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.all(4),
                      width: _currentIndex == index ? 16 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color:
                            _currentIndex == index ? Colors.green : Colors.grey,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
                verticalSpace(5),
                ElevatedButton(
                  onPressed: _nextPage,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(48),
                    backgroundColor: ColorManager.primaryColor,
                  ),
                  child: Text(
                    _currentIndex == _data.length - 1 ? "Get Started" : "Next",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeWithDrawer()),
                    );
                  },
                  child: const Text("Skip"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
