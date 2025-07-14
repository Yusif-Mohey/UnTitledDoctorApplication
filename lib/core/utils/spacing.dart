import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

SizedBox verticalSpace(double height) => SizedBox(height: height.h);

SizedBox horizontalSpace(double width) => SizedBox(width: width.w);

abstract class ScreenSizes {
  static double kScreenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double kScreenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
}
