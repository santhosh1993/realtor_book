import 'package:flutter/cupertino.dart';
import 'package:realtor_book/src/config/custom_colors.dart';

class CustomBottomSheet extends StatelessWidget {
  final Widget? header;
  final List<Widget>? right;
  final List<Widget>? left;
  final Widget child;

  CustomBottomSheet({this.header, this.right, this.left, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: BoxDecoration(
          color: CustomColors.background,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
    );
  }
}
