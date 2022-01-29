import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:realtor_book/src/config/file_manager.dart';
import 'package:realtor_book/src/content_form/detail.dart';
import 'package:realtor_book/src/content_form/widgets/source_detail_add_bottomsheet.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class ContentFormController extends GetxController {
  RxList<String> images = <String>[].obs;
  RxList<String> videos = <String>[].obs;
  RxList<Detail> details = <Detail>[].obs;
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

  removeImage(int index) {
    images.removeAt(index);
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
    try {
      final XFile? video = await _picker.pickVideo(source: ImageSource.gallery);
      if (video != null) {
        var tempPath = await FileManager.getFilePath(
            "temp" + tempIndex.toString() + ".mp4");
        video.saveTo(tempPath);

        final fileName = await VideoThumbnail.thumbnailFile(
          video: tempPath,
          thumbnailPath: (await getTemporaryDirectory()).path,
          imageFormat: ImageFormat.JPEG,
          maxWidth:
              128, // specify the height of the thumbnail, let the width auto-scaled to keep the source aspect ratio
          quality: 75,
        );

        videos.add(fileName ?? "");
        tempIndex = tempIndex + 1;
      }
    } catch (e) {
      print(e);
    }
  }

  addDetails({bool addAnother = false}) {
    print(titleController.text);
    print(descriptionController.text);
    details.add(Detail(
        title: titleController.text, description: descriptionController.text));
    titleController.text = "";
    descriptionController.text = "";
    if (!addAnother) {
      Get.back();
    }
  }
}
