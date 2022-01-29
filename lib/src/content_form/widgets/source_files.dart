import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:realtor_book/src/common/custom_rounded_border.dart';
import 'package:realtor_book/src/config/translations.dart';
import 'package:realtor_book/src/content_form/content_form_controller.dart';

class SourceFiles extends GetView<ContentFormController> {
  @override
  Widget build(BuildContext context) {
    return CustomRoundedCardWithHeader(
        child: Container(),
        marginSpacing: 0,
        cornerRadius: 7,
        onTapAddButton: () {},
        header: CustomTranslations.shared.propertyFiles);
  }
}
