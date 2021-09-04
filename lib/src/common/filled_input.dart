import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:realtor_book/src/config/custom_colors.dart';

class FilledInput extends StatefulWidget {
  final String? labelText;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization capitalization;
  final bool isRequired;

  FilledInput({
    this.labelText,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.capitalization = TextCapitalization.none,
    this.inputFormatters,
    this.keyboardType,
    this.isRequired = false,
  });

  @override
  _FilledInputState createState() => _FilledInputState();
}

class _FilledInputState extends State<FilledInput> {
  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      textCapitalization: widget.capitalization,
      inputFormatters: widget.inputFormatters,
      validator: widget.validator,
      obscureText: widget.obscureText,
      style: TextStyle(color: CustomColors.textColor1),
      cursorColor: CustomColors.selected,
      onChanged: (value) {
        setState(() {
          hasError =
              widget.validator != null && widget.validator!(value) != null;
        });
      },
      decoration: InputDecoration(
        labelText: '${widget.labelText}${widget.isRequired ? ' *' : ''}',
        labelStyle: TextStyle(
          color: hasError ? CustomColors.error : CustomColors.textColor2,
        ),
        border: UnderlineInputBorder(borderRadius: BorderRadius.circular(5)),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColors.error),
          borderRadius: BorderRadius.circular(5),
        ),
        errorStyle: TextStyle(color: CustomColors.error),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColors.textColor2),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColors.textColor2),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
