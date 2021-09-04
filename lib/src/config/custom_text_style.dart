import 'package:flutter/material.dart';
import 'dart:ui' as dartUI;
import 'package:flutter/rendering.dart';
import 'package:realtor_book/src/config/custom_colors.dart';

enum CustomFontStyle { avenir, centuryGothic }

class CustomTextStyle {
  static bold({
    double? size,
    Color color = Colors.black,
    CustomFontStyle style = CustomFontStyle.avenir,
    bool italic = false,
  }) {
    switch (style) {
      case CustomFontStyle.avenir:
        return TextStyle(
            fontFamily: "Avenir Next LT Pro",
            fontWeight: FontWeight.bold,
            fontSize: size,
            color: color,
            fontStyle:
                italic ? dartUI.FontStyle.italic : dartUI.FontStyle.normal,
            decoration: TextDecoration.none);
      case CustomFontStyle.centuryGothic:
        return TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Century Gothic",
            fontSize: size,
            color: color,
            decoration: TextDecoration.none);
    }
  }

  static regular({
    double? size,
    Color color = Colors.black,
    CustomFontStyle style = CustomFontStyle.avenir,
    double height = 1,
    bool italic = false,
    TextDecoration decoration = TextDecoration.none,
  }) {
    switch (style) {
      case CustomFontStyle.avenir:
        return TextStyle(
            height: height,
            fontFamily: "Avenir LT Std",
            fontSize: size,
            color: color,
            fontStyle: italic ? FontStyle.italic : FontStyle.normal,
            fontWeight: FontWeight.normal,
            decoration: decoration);
      case CustomFontStyle.centuryGothic:
        return TextStyle(
            fontFamily: "Century Gothic",
            fontSize: size,
            color: color,
            fontWeight: FontWeight.normal,
            decoration: decoration);
    }
  }

  static italic(
      {double? size,
      Color color = Colors.black,
      CustomFontStyle style = CustomFontStyle.avenir,
      double height = 1,
      TextDecoration decoration = TextDecoration.none}) {
    switch (style) {
      case CustomFontStyle.avenir:
        return TextStyle(
            height: height,
            fontFamily: "Avenir LT Std",
            fontSize: size,
            color: color,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
            decoration: decoration);
      case CustomFontStyle.centuryGothic:
        return TextStyle(
            fontFamily: "Century Gothic",
            fontSize: size,
            color: color,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
            decoration: decoration);
    }
  }

  static medium({
    double? size,
    Color color = Colors.black,
    double height = 1,
    CustomFontStyle style = CustomFontStyle.avenir,
  }) {
    switch (style) {
      case CustomFontStyle.avenir:
        return TextStyle(
            height: height,
            fontFamily: "Avenir LT Std",
            fontSize: size,
            color: color,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none);
      case CustomFontStyle.centuryGothic:
        return TextStyle(
          height: height,
          fontFamily: "Century Gothic",
          fontSize: size,
          color: color,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.none,
        );
    }
  }

  static primaryButton(Color color) {
    return CustomTextStyle.bold(
        style: CustomFontStyle.centuryGothic, size: 15, color: color);
  }

  static header({Color? color}) {
    return CustomTextStyle.bold(
        style: CustomFontStyle.centuryGothic,
        size: 22,
        color: color ?? CustomColors.textColor1);
  }
}
