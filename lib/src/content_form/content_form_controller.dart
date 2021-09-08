import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:realtor_book/src/content_form/widgets/source_detail_add_bottomsheet.dart';
import 'package:realtor_book/src/content_form/widgets/source_pics_add_bottomsheet.dart';
import 'package:realtor_book/src/content_form/widgets/source_videos_add_bottomsheet.dart';

class ContentFormController extends GetxController {
  RxList images = [].obs;
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  addSourceDetails() {
    Get.bottomSheet(SourceDetailAddBottomSheet());
  }

  addImages() {
    Get.bottomSheet(SourcePicsAddBottomSheet());
  }

  addVideos() {
    Get.bottomSheet(SourceVideosAddBottomSheet());
  }

  addDetails({bool addAnother = false}) {
    print(titleController.text);
    print(descriptionController.text);
    titleController.text = "";
    descriptionController.text = "";
    if (!addAnother) {
      Get.back();
    }
  }
}
