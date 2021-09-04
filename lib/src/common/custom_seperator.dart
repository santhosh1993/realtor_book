import 'package:flutter/cupertino.dart';
import 'package:realtor_book/src/config/custom_colors.dart';

class custom_seperator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          height: 1,
          color: CustomColors.seperator,
        ))
      ],
    );
  }
}
