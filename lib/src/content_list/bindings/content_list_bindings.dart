import 'package:get/get.dart';
import 'package:realtor_book/src/content_list/controller/content_list_controller.dart';

class ContentListBindings extends Bindings {
  @override
  void dependencies() {
    ContentListController();
  }
}
