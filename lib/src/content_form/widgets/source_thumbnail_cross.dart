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
            Container(
              width: 40,
              height: 40,
              color: Colors.amber,
            )
          ],
        ),
        Expanded(child: Container()),
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              padding: EdgeInsets.all(5),
              color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(index ?? "")],
              ),
            ),
            Expanded(child: Container()),
          ],
        ),
      ],
    );
  }
}
