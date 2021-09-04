import 'package:flutter/material.dart';
import 'package:realtor_book/src/common/custom_rounded_border.dart';
import 'package:realtor_book/src/common/filled_input.dart';
import 'package:realtor_book/src/common/profile_pic_with_cam.dart';
import 'package:realtor_book/src/config/custom_colors.dart';
import 'package:realtor_book/src/config/custom_text_style.dart';
import 'package:realtor_book/src/config/translations.dart';

class SourceContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomRoundedCardWithHeader(
      header: CustomTranslations.shared.propertyOwnerOrAgent,
      cornerRadius: 0,
      marginSpacing: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfilePicWithCam(
                  width: 120, height: 120, picUrl: "", onTap: () {}),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FilledInput(
                    labelText: CustomTranslations.shared.name,
                  ),
                  FilledInput(
                    labelText: CustomTranslations.shared.phone,
                  )
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }
}
