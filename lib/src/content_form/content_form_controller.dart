import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:realtor_book/src/config/file_manager.dart';
import 'package:realtor_book/src/content_form/widgets/source_detail_add_bottomsheet.dart';

class ContentFormController extends GetxController {
  RxList<String> images = <String>[].obs;
  RxList<XFile> videos = <XFile>[].obs;
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  int tempIndex = 0;

  addSourceDetails() {
    Get.bottomSheet(SourceDetailAddBottomSheet());
  }

  addImages() {
    picImages();
  }

  picImages() async {
    try {
      final List<XFile>? images = await _picker.pickMultiImage();
      var paths = <String>[];
      if (images != null) {
        for (var image in images) {
          var tempPath =
              await FileManager.getFilePath("temp" + tempIndex.toString());
          image.saveTo(tempPath);
          paths.add(tempPath);
          tempIndex = tempIndex + 1;
        }
        this.images.addAll(paths);
      }
    } catch (e) {
      print(e);
    }
  }

  addVideos() async {
    final XFile? video = await _picker.pickVideo(source: ImageSource.gallery);
    if (video != null) {}
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
