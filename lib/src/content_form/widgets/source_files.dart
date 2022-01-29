import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtor_book/src/common/custom_rounded_border.dart';
import 'package:realtor_book/src/config/translations.dart';
import 'package:realtor_book/src/content_form/content_form_controller.dart';
import 'package:realtor_book/src/content_form/widgets/source_thumbnail_cross.dart';
import 'package:thumbnailer/thumbnailer.dart';

class SourceFiles extends GetView<ContentFormController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => CustomRoundedCardWithHeader(
        child: child(),
        marginSpacing: 0,
        cornerRadius: 7,
        onTapAddButton: () {
          controller.addFiles();
        },
        header: CustomTranslations.shared.propertyFiles));
  }

  Widget child() {
    if (controller.files.length == 0) {
      return Container();
    } else {
      return Container(
        height: 120,
        child: ListView.separated(
          itemCount: controller.files.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 100,
              height: 120,
              child: SourceThumbnailCross(
                child: Thumbnail(
                  dataResolver: () async {
                    return File(controller.files[index]).readAsBytes();
                  },
                  mimeType: 'application/pdf',
                  widgetSize: 300,
                  decoration:
                      WidgetDecoration(wrapperBgColor: Colors.blueAccent),
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
