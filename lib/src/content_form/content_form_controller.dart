import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:realtor_book/src/content_form/source_detail_edit_or_add_screen.dart';

class ContentFormController extends GetxController {
  RxList images = [].obs;

  addSourceDetails() {
    Get.to(() => SourceDetailEditOrAddScreen(),
        transition: Transition.cupertino);
  }
}
