import 'package:flutter/material.dart';
import 'package:realtor_book/src/common/custom_bottom_sheet.dart';
import 'package:realtor_book/src/common/custom_button.dart';
import 'package:realtor_book/src/config/custom_colors.dart';
import 'package:realtor_book/src/config/custom_text_style.dart';
import 'package:realtor_book/src/config/images.dart';
import 'package:realtor_book/src/config/translations.dart';

class SourceVideosAddBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      child: Container(
        height: 400,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Select the type of videos you would be adding",
              textAlign: TextAlign.center,
              style: CustomTextStyle.medium(size: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: typeOfVideos(
                          buttonTitle:
                              CustomTranslations.shared.regularVideos)),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: typeOfVideos(
                          buttonTitle:
                              CustomTranslations.shared.realtorVideos)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget typeOfVideos({required String buttonTitle}) {
    return Container(
      child: Column(
        children: [
          Stack(
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
              Container(
                  width: 200,
                  height: 250,
                  child: Center(
                      child: Icon(
                    Icons.play_circle_filled,
                    color: CustomColors.background.withAlpha(200),
                    size: 50,
                  )))
            ],
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
