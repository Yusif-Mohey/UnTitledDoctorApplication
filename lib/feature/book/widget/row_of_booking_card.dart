import 'package:flutter/material.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/value_manager.dart';

class RowOfBookingCard extends StatelessWidget {
  const RowOfBookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            // -------------------------- Container of date -------------------------- //
            Container(
              padding: EdgeInsets.all(AppPadding.p10),
              width: AppSize.s60,
              height: AppSize.s70,
              decoration: BoxDecoration(
                color: ColorManager.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  Text(
                    '27',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: AppSize.s16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'FEB',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: AppSize.s16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(7),
            // -------------------------- Container of new -------------------------- //
            Container(
              width: AppSize.s55,
              height: AppSize.s22,
              decoration: BoxDecoration(color: Colors.grey[200]),
              child: Center(
                child: Text(
                  'New',
                  style: TextStyle(
                    color: ColorManager.primaryColor,
                    fontSize: AppSize.s14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        horizontalSpace(10),
        // -------------------------- Column of text -------------------------- //
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Booking added by you',
              style: TextStyle(
                color: ColorManager.black,
                fontSize: AppSize.s16,
                fontWeight: FontWeight.bold,
              ),
            ),
            verticalSpace(2),
            Text(
              'Booking for Abdullah shuvo',
              style: TextStyle(
                color: ColorManager.primaryColor,
                fontSize: AppSize.s14,
              ),
            ),
            verticalSpace(15),
            Text(
              '1 Prescription',
              style: TextStyle(color: Colors.grey, fontSize: AppSize.s14),
            ),
          ],
        ),
      ],
    );
  }
}
