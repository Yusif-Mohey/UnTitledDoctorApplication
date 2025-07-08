import 'package:flutter/material.dart';
import 'package:untitleddoctor/core/utils/color_manager.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';
import '../../../core/utils/value_manager.dart';

class FindDoctorCart extends StatelessWidget {
  const FindDoctorCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: AppSize.s140,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff0EBE7F), Color(0xff0EBE7F)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(AppPadding.p20),
            ),
          ),
          padding: EdgeInsets.only(
            left: AppPadding.p20,
            right: AppPadding.p20,
            bottom: AppPadding.p20,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpace(AppSize.s10),
                    Text(
                      'Hi Handwerker!',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: AppSize.s16,
                      ),
                    ),
                    verticalSpace(AppSize.s5),
                    Text(
                      'Find Your Doctor',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: AppSize.s24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                radius: AppSize.s25,
                backgroundImage: const AssetImage(
                  'assets/images/you_are_good_man.jpg',
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 100,
          left: AppSize.s20,
          right: AppSize.s20,
          child: Container(
            decoration: BoxDecoration(
              color: ColorManager.whit,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: AppPadding.p10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search.....",
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {},
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: AppPadding.p15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
