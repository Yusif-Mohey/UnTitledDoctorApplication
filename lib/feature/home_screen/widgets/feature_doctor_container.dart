import 'package:flutter/material.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/images_manager.dart';
import '../../../core/utils/value_manager.dart';

class FeatureDoctorContainer extends StatelessWidget {
  const FeatureDoctorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(AppPadding.p15),
      padding: EdgeInsets.all(AppPadding.p5),
      width: AppSize.s120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.favorite_border, color: Colors.grey),
              Spacer(),
              Icon(Icons.star, color: ColorManager.amber, size: AppSize.s15),
              horizontalSpace(AppSize.s6),
              Text(
                '3.7',
                style: TextStyle(
                  fontSize: AppSize.s15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          verticalSpace(AppSize.s4),
          Image.asset(ImagesManager.featureDoctor),
          Text(
            'Dr. Crick',
            style: TextStyle(
              fontSize: AppSize.s14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('\$', style: TextStyle(color: ColorManager.primaryColor)),
              horizontalSpace(AppSize.s2),
              Text(
                '22.00/hour',
                style: TextStyle(color: Colors.grey, fontSize: AppSize.s12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
