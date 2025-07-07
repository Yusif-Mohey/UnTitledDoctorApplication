import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.height,
    this.colorCircularProgress,
    this.widthButton,
    this.fontSize,
    this.borderRadius,
    this.color,
    this.fontColor,
    this.borderColor,
    this.elevation,
    this.maxFontSize,
    this.minFontSize,
  });

  final String title;
  final void Function()? onTap;
  final Color? fontColor;

  final Color? color;
  final double? fontSize, maxFontSize, minFontSize;
  final double? height;
  final Color? borderColor;

  final Color? colorCircularProgress;
  final double? widthButton, elevation, borderRadius;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width * 0.020;
    return InkWell(
      onTap: onTap,
      child: Card(
        color: color ?? Colors.green,
        elevation: elevation ?? 1,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: borderColor ?? Colors.transparent,
            width: 1.2,
          ),
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
        ),
        child: SizedBox(
          width: widthButton ?? width * 19.5,
          height: height ?? 50,
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: fontColor ?? Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'cairo',
                fontSize: fontSize ?? 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
