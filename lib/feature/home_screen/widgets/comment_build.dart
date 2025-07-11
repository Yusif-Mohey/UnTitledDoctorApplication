import 'package:flutter/material.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/images_manager.dart';
import '../../../core/utils/value_manager.dart';

class CommentBuild extends StatelessWidget {
  const CommentBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            CircleAvatar(
              maxRadius: 28,
              backgroundImage: AssetImage(ImagesManager.popularDoctor),
            ),
            horizontalSpace(AppSize.s5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' Everhart Tween',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: ColorManager.whit,
                  ),
                ),
                Text(
                  'Thanks for shareing doctor  ',
                  style: TextStyle(fontSize: 14, color: ColorManager.whit),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
