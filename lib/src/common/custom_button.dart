import 'package:flutter/material.dart';
import 'package:realtor_book/src/config/custom_colors.dart';
import 'package:realtor_book/src/config/custom_text_style.dart';

class CustomRoundedCornerButton extends StatelessWidget {
  final String title;
  final TextStyle style;
  final double cornerRadius;
  final onPressed;
  final Color backgroundColor;
  final isFill;
  final double width;
  final double height;
  final bool isEnabled;

  CustomRoundedCornerButton({
    required this.title,
    required this.style,
    required this.cornerRadius,
    this.onPressed,
    required this.backgroundColor,
    this.isFill = true,
    this.width = 40,
    this.height = 40,
    this.isEnabled = true,
  });

  CustomRoundedCornerButton.primary({required this.title, this.onPressed})
      : isFill = true,
        this.width = 40,
        this.height = 40,
        this.isEnabled = true,
        style = CustomTextStyle.bold(
            style: CustomFontStyle.centuryGothic,
            size: 18,
            color: CustomColors.textColor3),
        cornerRadius = 5,
        backgroundColor = CustomColors.appBar;

  CustomRoundedCornerButton.secondary({required this.title, this.onPressed})
      : isFill = false,
        this.width = 40,
        this.height = 40,
        this.isEnabled = true,
        style = CustomTextStyle.bold(
            style: CustomFontStyle.centuryGothic,
            size: 18,
            color: CustomColors.appBar),
        cornerRadius = 5,
        backgroundColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: this.isEnabled ? 1 : 0.7,
      child: MaterialButton(
        minWidth: width,
        height: height,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(this.cornerRadius),
            side: isFill
                ? BorderSide.none
                : BorderSide(
                    style: BorderStyle.solid,
                    color: style.color ?? Colors.white,
                    width: 2,
                  )),
        child: Text(
          title,
          style: style,
        ),
        color: backgroundColor,
        disabledColor: backgroundColor,
        elevation: 0,
        onPressed: this.onPressed,
      ),
    );
  }
}
