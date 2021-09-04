import 'package:flutter/material.dart';
import 'package:realtor_book/src/config/custom_colors.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({required Widget title})
      : super(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              title,
            ],
          ),
          backgroundColor: CustomColors.appBar,
          foregroundColor: CustomColors.appBar,
          brightness: Brightness.dark,
        );
}
