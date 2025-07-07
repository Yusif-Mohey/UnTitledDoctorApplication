import 'package:flutter/material.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';
import 'package:untitleddoctor/core/utils/value_manager.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/images_manager.dart';
import '../../../core/widgets/custom_button.dart';
import '../../home_screen/views/appointment_screen.dart';

class ColumnCartFavDoctor extends StatelessWidget {
  const ColumnCartFavDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // -------------------------- doctor info and image -------------------------- //
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: AppSize.s87,
              width: AppSize.s92,
              child: Image.asset(ImagesManager.popularDoctor),
            ),
            horizontalSpace(AppSize.s10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dr. Tranquilli',
                  style: TextStyle(
                    fontSize: AppSize.s20,
                    fontWeight: FontWeight.bold,
                    color: ColorManager.black,
                  ),
                ),
                Text(
                  'Specilist medicine',
                  style: TextStyle(
                    fontSize: AppSize.s14,
                    color: ColorManager.primaryColor,
                  ),
                ),
                Text(
                  '6 Years experience ',
                  style: TextStyle(fontSize: AppSize.s12, color: Colors.grey),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: ColorManager.primaryColor,
                      minRadius: AppSize.s5,
                    ),
                    horizontalSpace(AppSize.s5),
                    Text('87%', style: TextStyle(color: Colors.grey)),
                    horizontalSpace(AppSize.s15),
                    // Spacer(),
                    CircleAvatar(
                      backgroundColor: ColorManager.primaryColor,
                      minRadius: AppSize.s5,
                    ),
                    horizontalSpace(AppSize.s5),
                    Text(
                      '69 Patient Stories',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Icon(Icons.favorite, color: ColorManager.red),
            horizontalSpace(AppSize.s18),
          ],
        ),
        verticalSpace(AppSize.s10),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Next Available',
                  style: TextStyle(
                    color: ColorManager.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '10:00',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: AppSize.s14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' AM tomorrow',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: AppSize.s14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            CustomButton(
              title: 'Book Now',
              color: ColorManager.primaryColor,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CustomDateTimePicker(),
                  ),
                );
              },
              height: AppSize.s50,
              widthButton: AppSize.s130,
            ),
          ],
        ),
        verticalSpace(AppSize.s10),
      ],
    );
  }
}
