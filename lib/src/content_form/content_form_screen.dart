import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:realtor_book/src/config/custom_appbar.dart';
import 'package:realtor_book/src/config/custom_colors.dart';
import 'package:realtor_book/src/config/translations.dart';
import 'package:realtor_book/src/content_form/content_form_controller.dart';

class ContentFormScreen extends GetView<ContentFormController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(CustomTranslations.shared.addANewProperty),
      ),
      body: Container(
        color: CustomColors.background,
      ),
    );
  }
}
