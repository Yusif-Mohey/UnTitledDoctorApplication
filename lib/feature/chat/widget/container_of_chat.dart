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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dr. Fillerup Grab',
                      style: TextStyle(
                        fontSize: AppSize.s20,
                        fontWeight: FontWeight.bold,
                        color: ColorManager.black,
                      ),
                    ),
                    Text(
                      '11/19/19',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: AppSize.s15,
                      ),
                    ),
                  ],
                ),
                verticalSpace(5), // Optional: add some spacing
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.check, color: Colors.grey),
                    horizontalSpace(5),
                    Expanded(
                      child: Text(
                        'What kind of strategy is better?qwertrewqwerrewqweewqwq32e34342q2344ea34r3w2c3c2x',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
