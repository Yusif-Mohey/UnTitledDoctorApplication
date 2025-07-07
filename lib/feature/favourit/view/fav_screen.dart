import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';
import 'package:untitleddoctor/core/utils/value_manager.dart';
import '../../../core/utils/color_manager.dart';
import '../widget/column_cart_fav_doctor.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 800.h,
                child: ListView.separated(
                  itemBuilder:
                      (context, index) => Card(
                        color: ColorManager.whit,
                        elevation: 1.5,
                        // margin: EdgeInsets.all(AppPadding.p15),
                        child: ColumnCartFavDoctor(),
                      ),
                  separatorBuilder:
                      (context, index) => verticalSpace(AppSize.s15),
                  itemCount: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
