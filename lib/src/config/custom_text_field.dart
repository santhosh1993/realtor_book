import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

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
              TextStyle(color: Color.fromRGBO(3, 60, 109, 1), fontSize: 15),
          decoration: BoxDecoration(
              border: Border.all(
                  color: borderColor != null
                      ? borderColor
                      : Color.fromRGBO(121, 121, 121, 1)),
              borderRadius: BorderRadius.all(Radius.circular(5))),
        );
}
