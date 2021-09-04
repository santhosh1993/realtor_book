import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:realtor_book/src/config/custom_colors.dart';
import 'package:realtor_book/src/config/custom_text_style.dart';

class CustomTextFieldWithBorder extends CupertinoTextField {
  CustomTextFieldWithBorder({
    TextEditingController? controller,
    bool obscureText = false,
    String? placeholder,
    void Function(String)? onChanged,
    Color? borderColor,
    TextStyle? style,
    TextStyle? placeholderStyle,
    int? maxLines = 1,
    List<TextInputFormatter>? inputFormatters,
  }) : super(
          inputFormatters: inputFormatters,
          controller: controller,
          style: style,
          obscureText: obscureText,
          placeholder: placeholder,
          onChanged: onChanged,
          maxLines: maxLines,
          textInputAction: TextInputAction.done,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          placeholderStyle: placeholderStyle ??
              CustomTextStyle.regular(size: 15, color: CustomColors.textColor2),
          decoration: BoxDecoration(
              border: Border.all(
                  color:
                      borderColor != null ? borderColor : CustomColors.border),
              borderRadius: BorderRadius.all(Radius.circular(5))),
        );
}

class CustomTextFieldWithBorderAndHeader extends StatelessWidget {
  final bool obscureText;
  final String placeholder;
  final void Function(String)? onChanged;
  final Widget header;
  final TextEditingController? controller;
  final Color? borderColor;
  final TextStyle? style;
  final TextStyle? placeholderStyle;
  final int? maxLines;
  final List<TextInputFormatter>? inputFormatters;

  CustomTextFieldWithBorderAndHeader(
      {this.controller,
      required this.header,
      this.obscureText = false,
      this.placeholder = "",
      this.onChanged,
      this.borderColor,
      this.style,
      this.maxLines = 1,
      this.inputFormatters,
      this.placeholderStyle});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header,
        Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
        Container(
          child: CustomTextFieldWithBorder(
              controller: controller,
              obscureText: obscureText,
              placeholder: placeholder,
              placeholderStyle: placeholderStyle,
              onChanged: onChanged,
              borderColor: borderColor,
              style: style,
              maxLines: maxLines,
              inputFormatters: inputFormatters),
        )
      ],
    );
  }
}
