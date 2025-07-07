import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitleddoctor/core/utils/images_manager.dart';
import 'package:untitleddoctor/core/utils/spacing.dart' show horizontalSpace;

import '../data/category_model.dart';

class MedicalCategories extends StatelessWidget {
  final List<CategoryModel> categories = [
    CategoryModel(
      name: "أسنان",
      icon: ImagesManager.teeth,
      color: Color(0xFF765AFC),
    ),
    CategoryModel(
      name: "قلب",
      icon: ImagesManager.heart,
      color: Color(0xFF07D9AD),
    ),
    CategoryModel(
      name: "عيون",
      icon: ImagesManager.eyes,
      color: Color(0xFFFE7F44),
    ),
    CategoryModel(
      name: "تجميل",
      icon: ImagesManager.stomach,
      color: Color(0xFFFF6C60),
    ),
  ];

  MedicalCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: SizedBox(
          // لازم نحدد ارتفاع علشان ListView الأفقية
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: categories.length,
            separatorBuilder: (context, index) => horizontalSpace(15),
            itemBuilder: (context, index) {
              final category = categories[index];
              return _buildCategoryCard(category);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryCard(CategoryModel category) {
    return Container(
      width: 85,
      height: 198,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        gradient: LinearGradient(
          colors: [category.color.withOpacity(0.7), category.color],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: SvgPicture.asset(
          category.icon,
          width: 35,
          height: 35,
          color: Colors.white,
        ),
      ),
    );
  }
}
