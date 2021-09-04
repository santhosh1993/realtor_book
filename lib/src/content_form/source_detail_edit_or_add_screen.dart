import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:realtor_book/src/common/custom_appbar.dart';
import 'package:realtor_book/src/config/translations.dart';
import 'package:realtor_book/src/content_form/content_form_controller.dart';

class SourceDetailEditOrAddScreen extends GetView<ContentFormController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(CustomTranslations.shared.propertyDetails),
      ),
      body: Container(),
    );
  }
}
