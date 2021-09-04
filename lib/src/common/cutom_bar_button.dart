import 'package:flutter/material.dart';

class CustomBarButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget child;

  CustomBarButton({this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        Expanded(
            child: GestureDetector(
          child: Container(
            height: 30,
            child: Center(
              child: this.child,
            ),
          ),
          onTap: this.onTap,
        ))
      ],
    );
  }
}
