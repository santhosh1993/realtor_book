import 'package:flutter/material.dart';
import 'package:realtor_book/src/common/custom_bottom_sheet.dart';
import 'package:realtor_book/src/common/custom_button.dart';
import 'package:realtor_book/src/config/custom_colors.dart';
import 'package:realtor_book/src/config/custom_text_style.dart';
import 'package:realtor_book/src/config/images.dart';
import 'package:realtor_book/src/config/translations.dart';

class SourcePicsAddBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      child: Container(
        height: 410,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Select the type of images you would be adding",
              style: CustomTextStyle.medium(size: 20, height: 1.2),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: typeOfPics(
                          buttonTitle:
                              CustomTranslations.shared.regularImages)),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: typeOfPics(
                          buttonTitle:
                              CustomTranslations.shared.realtorImages)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget typeOfPics({required String buttonTitle}) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 200,
            height: 250,
            color: CustomColors.appBar,
            child: Image.asset(
              Images.exampleImage(),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                  child: CustomRoundedCornerButton.primary(title: buttonTitle))
            ],
          )
        ],
      ),
    );
  }
}
