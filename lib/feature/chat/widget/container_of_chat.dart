import 'package:flutter/material.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/images_manager.dart';
import '../../../core/utils/value_manager.dart';

class ContainerOfChat extends StatelessWidget {
  const ContainerOfChat({super.key, this.ontap});
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Row(
        children: [
          CircleAvatar(
            maxRadius: 28,
            backgroundImage: AssetImage(ImagesManager.popularDoctor),
          ),
          horizontalSpace(10),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Dr. Fillerup Grab',
                        style: TextStyle(
                          fontSize: AppSize.s20,
                          fontWeight: FontWeight.bold,
                          color: ColorManager.black,
                        ),
                      ),
                      horizontalSpace(100),
                      Text(
                        '11/19/19',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: AppSize.s15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.grey),
                      Text(
                        'What kind of strategy is better?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
