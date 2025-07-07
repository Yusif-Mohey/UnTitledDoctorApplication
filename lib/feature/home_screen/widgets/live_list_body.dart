import 'package:flutter/material.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';
import 'package:untitleddoctor/core/utils/value_manager.dart';
import 'package:untitleddoctor/feature/home_screen/views/live_screen.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/images_manager.dart';

class LiveListBody extends StatelessWidget {
  const LiveListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21),
      child: Container(
        height: 140,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
            image: AssetImage(ImagesManager.imagelive),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: AppPadding.p12,
                right: AppPadding.p18,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: AppSize.s18,
                    width: AppSize.s44,
                    decoration: BoxDecoration(
                      color: ColorManager.red,
                      borderRadius: BorderRadius.circular(1),
                    ),
                    child: Row(
                      children: [
                        horizontalSpace(AppSize.s5),
                        Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: AppSize.s8,
                        ),
                        horizontalSpace(AppSize.s4),
                        Text(
                          'LIVE',
                          style: TextStyle(
                            color: ColorManager.whit,
                            fontSize: AppSize.s10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.grey[400],
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LiveScreen()),
                    );
                  },
                  icon: Icon(Icons.play_arrow, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
