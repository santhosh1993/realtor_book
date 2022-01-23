import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:realtor_book/src/config/custom_colors.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({required Widget title, List<Widget>? actions})
      : super(
            title: title,
            backgroundColor: CustomColors.appBar,
            foregroundColor: CustomColors.appBar,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            actions: actions);
}
