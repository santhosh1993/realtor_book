import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtor_book/src/common/custom_rounded_border.dart';
import 'package:realtor_book/src/common/filled_input.dart';
import 'package:realtor_book/src/common/profile_pic_with_cam.dart';
import 'package:realtor_book/src/config/translations.dart';

import '../content_form_controller.dart';

class SourceContactInfo extends GetView<ContentFormController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => CustomRoundedCardWithHeader(
          header: CustomTranslations.shared.propertyOwnerOrAgent,
          cornerRadius: 7,
          marginSpacing: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProfilePicWithCam(
                      width: 120,
                      height: 120,
                      picUrl: controller.profilePicUrl.value,
                      onTap: () {
                        controller.addProfilePic();
                      }),
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
        ));
  }
}
