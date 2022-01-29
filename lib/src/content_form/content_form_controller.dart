import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:realtor_book/src/content_form/detail.dart';
import 'package:realtor_book/src/content_form/widgets/source_detail_add_bottomsheet.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class ContentFormController extends GetxController {
  RxList<String> images = <String>[].obs;
  RxList<String> videos = <String>[].obs;
  RxList<Detail> details = <Detail>[].obs;
  RxList<String> files = <String>[].obs;

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  final ImagePicker _picker = ImagePicker();

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
          paths.add(image.path);
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
        final fileName = await VideoThumbnail.thumbnailFile(
          video: video.path,
          thumbnailPath: (await getTemporaryDirectory()).path,
          imageFormat: ImageFormat.JPEG,
          maxWidth:
              128, // specify the height of the thumbnail, let the width auto-scaled to keep the source aspect ratio
          quality: 75,
        );

        videos.add(fileName ?? "");
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

  addFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      PlatformFile pfile = result.files.first;
      if (pfile.path != null) {
        files.add(pfile.path!);
      }
    }
  }
}
