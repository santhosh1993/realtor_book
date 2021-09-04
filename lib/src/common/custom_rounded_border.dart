import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:realtor_book/src/config/custom_colors.dart';
import 'package:realtor_book/src/config/custom_text_style.dart';

class CustomRoundedCard extends StatelessWidget {
  final Widget child;
  final double marginSpacing;
  final double cornerRadius;
  final double elevation;

  CustomRoundedCard({
    required this.child,
    this.marginSpacing = 24,
    this.cornerRadius = 5,
    this.elevation = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(cornerRadius)),
          side: BorderSide(color: Colors.white, width: 0.5)),
      margin: EdgeInsets.fromLTRB(this.marginSpacing, 0, this.marginSpacing, 0),
      child: child,
    );
  }
}

class CustomRoundedCardWithHeader extends StatelessWidget {
  final Widget child;
  final double marginSpacing;
  final double cornerRadius;
  final double elevation;
  final String header;
  final EdgeInsets padding;

  CustomRoundedCardWithHeader(
      {required this.child,
      this.marginSpacing = 24,
      this.cornerRadius = 5,
      this.elevation = 2.0,
      required this.padding,
      required this.header});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(cornerRadius)),
          side: BorderSide(color: Colors.white, width: 0.5)),
      margin: EdgeInsets.fromLTRB(this.marginSpacing, 0, this.marginSpacing, 0),
      child: Container(
        padding: padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              header,
              style:
                  CustomTextStyle.regular(size: 15, color: CustomColors.appBar),
            ),
            SizedBox(
              height: 10,
            ),
            child
          ],
        ),
      ),
    );
  }
}
