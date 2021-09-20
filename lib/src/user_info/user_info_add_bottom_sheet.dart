import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:realtor_book/src/common/custom_bottom_sheet.dart';
import 'package:realtor_book/src/common/custom_button.dart';
import 'package:realtor_book/src/common/custom_text_field.dart';
import 'package:realtor_book/src/common/widget_to_image.dart';
import 'package:realtor_book/src/config/custom_colors.dart';
import 'package:realtor_book/src/config/custom_text_style.dart';
import 'package:realtor_book/src/config/images.dart';
import 'package:realtor_book/src/config/translations.dart';
import 'package:realtor_book/src/user_info/user_info_controller.dart';

class UserInfoAddBottomSheet extends GetView<UserInfoController> {
  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      child: Container(
        height: 440,
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            samplePic(),
            SizedBox(
              height: 10,
            ),
            CustomTextFieldWithBorderAndHeader(
              controller: controller.nameController,
              header: Text(CustomTranslations.shared.name),
              onChanged: (data) {
                controller.onNameChange();
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFieldWithBorderAndHeader(
              controller: controller.contactNumberController,
              header: Text(CustomTranslations.shared.contactNo),
              onChanged: (data) {
                controller.onPhoneChange();
              },
            ),
            SizedBox(
              height: 5,
            ),
            Row(children: [
              Expanded(
                  child: CustomRoundedCornerButton.primary(
                title: CustomTranslations.shared.save,
                onPressed: () {
                  controller.onSaveTapped();
                },
              )),
            ])
          ],
        ),
      ),
    );
  }

  Widget samplePic() {
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
                      height: 150,
                      color: CustomColors.appBar,
                      child: Image.asset(
                        Images.startYourBuissness(),
                        fit: BoxFit.cover,
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
                padding: EdgeInsets.only(right: 10),
                child: Tooltip(
                  triggerMode: TooltipTriggerMode.tap,
                  waitDuration: Duration(seconds: 1),
                  showDuration: Duration(seconds: 1),
                  preferBelow: false,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(left: 10, right: 10),
                  message: CustomTranslations.shared.userInfoDescription,
                  child: Icon(
                    Icons.info_outline_rounded,
                    color: Colors.grey,
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
    return WidgetToImage(builder: (key) {
      controller.key = key;
      return Obx(() => Container(
            padding: EdgeInsets.all(7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name: ${(controller.name.value.isEmpty) ? "Contact Name" : controller.name.value}",
                  style: CustomTextStyle.regular(size: 16),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Contact No: ${(controller.contactNumber.value.isEmpty) ? "Contact Number" : controller.contactNumber.value}",
                  style: CustomTextStyle.regular(size: 16),
                )
              ],
            ),
          ));
    });
  }
}
