import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtor_book/src/common/custom_bottom_sheet.dart';
import 'package:realtor_book/src/common/custom_button.dart';
import 'package:realtor_book/src/common/custom_text_field.dart';
import 'package:realtor_book/src/config/translations.dart';
import 'package:realtor_book/src/content_form/content_form_controller.dart';

class SourceDetailAddBottomSheet extends GetView<ContentFormController> {
  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      child: Container(
        height: 350,
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            CustomTextFieldWithBorderAndHeader(
              header: Text(CustomTranslations.shared.title),
              controller: controller.titleController,
            ),
            SizedBox(
              height: 10,
            ),
            Text(CustomTranslations.shared.description),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: CustomTextFieldWithBorder(
                maxLines: null,
                controller: controller.descriptionController,
                keyboardType: TextInputType.multiline,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(children: [
              Expanded(
                  child: CustomRoundedCornerButton.primary(
                title: CustomTranslations.shared.save,
                onPressed: () {
                  controller.addDetails();
                },
              )),
              SizedBox(width: 10),
              Expanded(
                  child: CustomRoundedCornerButton.primary(
                      title: CustomTranslations.shared.saveAndAdd,
                      onPressed: () {
                        controller.addDetails(addAnother: true);
                      }))
            ])
          ],
        ),
      ),
    );
  }
}
