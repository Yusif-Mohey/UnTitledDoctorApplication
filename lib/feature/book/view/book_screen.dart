import 'package:flutter/material.dart';
import 'package:untitleddoctor/core/utils/color_manager.dart';
import 'package:untitleddoctor/core/utils/value_manager.dart';

import '../widget/row_of_booking_card.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(itemBuilder: (context, index) =>  SizedBox(
          height: AppSize.s150,
          child: Card(
            elevation: 1.5,
            color: ColorManager.whit,
            margin: EdgeInsets.all(AppSize.s15),
            child: Padding(
              padding: const EdgeInsets.all(AppSize.s8),
              child: RowOfBookingCard(),
            ),
          ),
        ),
          separatorBuilder: (context, index) => SizedBox(height: AppSize.s15,),
          itemCount: 3,)


    ),
    );
  }
}


