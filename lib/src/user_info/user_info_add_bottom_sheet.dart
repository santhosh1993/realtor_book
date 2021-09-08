import 'package:flutter/material.dart';
import 'package:realtor_book/src/common/custom_bottom_sheet.dart';
import 'package:realtor_book/src/common/custom_button.dart';
import 'package:realtor_book/src/common/custom_text_field.dart';
import 'package:realtor_book/src/config/translations.dart';

class UserInfoAddBottomSheet extends StatelessWidget {
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
                header: Text(CustomTranslations.shared.title)),
            SizedBox(
              height: 10,
            ),
            CustomTextFieldWithBorderAndHeader(
                header: Text(CustomTranslations.shared.phone)),
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
}
