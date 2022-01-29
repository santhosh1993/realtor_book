import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:realtor_book/src/common/custom_appbar.dart';
import 'package:realtor_book/src/config/custom_colors.dart';
import 'package:realtor_book/src/config/translations.dart';
import 'package:realtor_book/src/content_form/content_form_controller.dart';
import 'package:realtor_book/src/content_form/widgets/source_contact_info.dart';
import 'package:realtor_book/src/content_form/widgets/source_details.dart';
import 'package:realtor_book/src/content_form/widgets/source_files.dart';
import 'package:realtor_book/src/content_form/widgets/source_pics.dart';
import 'package:realtor_book/src/content_form/widgets/source_videos.dart';

class ContentFormScreen extends GetView<ContentFormController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(CustomTranslations.shared.addANewProperty),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.done_rounded,
              color: CustomColors.enabled,
            ),
          )
        ],
      ),
      body: Container(
        color: CustomColors.background,
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            SourceContactInfo(),
            SizedBox(
              height: 10,
            ),
            SourceDetails(),
            SizedBox(
              height: 10,
            ),
            SourcePics(),
            SizedBox(
              height: 10,
            ),
            SourceVideos(),
            SizedBox(
              height: 10,
            ),
            SourceFiles(),
          ],
        ),
      ),
    );
  }
}
