import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtor_book/src/common/custom_rounded_border.dart';
import 'package:realtor_book/src/config/translations.dart';
import 'package:realtor_book/src/content_form/content_form_controller.dart';

class SourceDetails extends GetView<ContentFormController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => CustomRoundedCardWithHeader(
        child: child(),
        marginSpacing: 0,
        cornerRadius: 7,
        onTapAddButton: () {
          controller.addSourceDetails();
        },
        header: CustomTranslations.shared.propertyDetails));
  }

  Widget child() {
    if (controller.details.length == 0) {
      return Container();
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: details(),
      );
    }
  }

  List<Widget> details() {
    List<Widget> children = [];
    for (var detail in controller.details) {
      children.add(Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
            child: Text(detail.title),
          )),
          Text(":"),
          Expanded(
              flex: 2,
              child: Container(
                child: Text(detail.description),
              ))
        ],
      ));

      children.add(Container(
        height: 1,
        margin: EdgeInsets.only(top: 5),
      ));
    }

    return children;
  }
}
