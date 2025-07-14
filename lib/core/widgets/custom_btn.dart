import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitleddoctor/core/utils/theme/styles.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.text,
    required this.height,
    required this.width,
    required this.color,
    this.fontColor = Colors.white,
    this.style = Styles.textStyle24,
    this.contentWidget,
    this.shadow,
    // required this.color,
  });

  final void Function()? onPressed;
  final String text;
  final double height;
  final double width;
  final Color color;
  final Color fontColor;
  final TextStyle style;
  final Widget? contentWidget;
  final BoxShadow? shadow;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  double scale = 1.0;
  //ما_ يدوس
  void _onTapDown(TapDownDetails details) {
    setState(() {
      scale = 0.9;
    });
  }

  //ما_ يرفع_ايده
  void _onTapUp(TapUpDetails details) {
    setState(() {
      scale = 1.0;
    });
    if (widget.onPressed != null) {
      widget.onPressed!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: () {
        setState(() {
          scale = 1.0;
          // _onTapCancel();
        });
      }, //لو سحب منغير ما يدوس -> يرجع زى ما كان
      child: AnimatedContainer(
        //جديده
        duration: Duration(milliseconds: 100),
        curve: Curves.easeInOut, //بيخلى الحركه مغير ما تقطع
        transform: Matrix4.identity()..scale(scale), //تطبيق الانماشن
        height: widget.height.h,
        width: widget.width.w,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [widget.shadow ?? BoxShadow()],
        ),
        child: Center(
          child:
              widget.contentWidget ??
              Text(
                widget.text,
                style: widget.style.copyWith(color: widget.fontColor),
              ),
        ),
      ),
    );
  }
}
