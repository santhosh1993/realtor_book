import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:realtor_book/src/common/custom_rounded_border.dart';
import 'package:realtor_book/src/config/translations.dart';
import 'package:realtor_book/src/content_form/content_form_controller.dart';
import 'package:realtor_book/src/content_form/widgets/source_thumbnail_cross.dart';

class SourcePics extends GetView<ContentFormController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => CustomRoundedCardWithHeader(
        child: child(),
        marginSpacing: 0,
        cornerRadius: 7,
        onTapAddButton: () {
          controller.addImages();
        },
        header: CustomTranslations.shared.propertyImages));
  }

  Widget child() {
    if (controller.images.length == 0) {
      return Container();
    } else {
      return Container(
        height: 120,
        child: ListView.separated(
          itemCount: controller.images.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 100,
              height: 120,
              child: SourceThumbnailCross(
                child: Image.file(
                  File(controller.images[index]),
                  fit: BoxFit.cover,
                ),
                onCrossTap: () {
                  controller.removeImage(index);
                },
                index: index.toString(),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 10,
            );
          },
        ),
      );
    }
  }
}
