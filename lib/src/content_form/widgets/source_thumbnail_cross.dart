import 'package:flutter/material.dart';

class SourceThumbnailCross extends StatelessWidget {
  final Widget child;
  final VoidCallback onCrossTap;
  final String? index;

  SourceThumbnailCross(
      {required this.child, required this.onCrossTap, this.index = ""});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: child,
          width: double.infinity,
          height: double.infinity,
        ),
        crossAndReference()
      ],
    );
  }

  Widget crossAndReference() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Container()),
            GestureDetector(
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 15,
                ),
              ),
              onTap: () {
                onCrossTap();
              },
            )
          ],
        ),
        Expanded(child: Container()),
      ],
    );
  }
}
