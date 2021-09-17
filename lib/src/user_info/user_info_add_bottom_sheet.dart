import 'package:flutter/material.dart';
import 'package:realtor_book/src/common/custom_bottom_sheet.dart';
import 'package:realtor_book/src/common/custom_button.dart';
import 'package:realtor_book/src/common/custom_text_field.dart';
import 'package:realtor_book/src/config/custom_colors.dart';
import 'package:realtor_book/src/config/custom_text_style.dart';
import 'package:realtor_book/src/config/images.dart';
import 'package:realtor_book/src/config/translations.dart';

class UserInfoAddBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      child: Container(
        height: 450,
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            typeOfPics(buttonTitle: "as"),
            SizedBox(
              height: 10,
            ),
            CustomTextFieldWithBorderAndHeader(
                placeholder: "Contact Name",
                header: Text(CustomTranslations.shared.name)),
            SizedBox(
              height: 10,
            ),
            CustomTextFieldWithBorderAndHeader(
                placeholder: "Contact Number",
                header: Text(CustomTranslations.shared.contactNo)),
            SizedBox(
              height: 5,
            ),
            Row(children: [
              Expanded(
                  child: CustomRoundedCornerButton.primary(
                      title: CustomTranslations.shared.save)),
            ])
          ],
        ),
      ),
    );
  }

  Widget typeOfPics({required String buttonTitle}) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      color: CustomColors.appBar,
                      child: Image.asset(
                        Images.exampleImage(),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.fromLTRB(2, 2, 0, 0),
                  child: Banner(
                    color: CustomColors.appBar.withAlpha(100),
                    message: "Sample",
                    location: BannerLocation.topStart,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              userInfo(),
              Container(
                child: Tooltip(
                  triggerMode: TooltipTriggerMode.tap,
                  showDuration: Duration(seconds: 5),
                  preferBelow: false,
                  margin: EdgeInsets.only(left: 10, right: 10, top: 0),
                  message: CustomTranslations.shared.userInfoDescription,
                  child: Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.info_outline_rounded,
                      color: Colors.grey,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget userInfo() {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Name: Contact Name",
            style: CustomTextStyle.regular(size: 16),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            "Contact No: Contact Number",
            style: CustomTextStyle.regular(size: 16),
          )
        ],
      ),
    );
  }
}
