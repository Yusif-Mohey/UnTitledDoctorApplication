import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

SizedBox verticalSpace(double height) => SizedBox(height: height.h);

SizedBox horizontalSpace(double width) => SizedBox(width: width.w);

class ScreenSizes {
  static late double kScreenWidth;
  static late double kScreenHeight;

  static void init(BuildContext context) {
    kScreenWidth = MediaQuery.of(context).size.width;
    kScreenHeight = MediaQuery.of(context).size.height;
  }
}
