import 'package:get/get.dart';
import 'package:realtor_book/src/content_form/controller/content_form_controller.dart';

class ContentFormBindings extends Bindings {
  @override
  void dependencies() {
    ContentFormController();
  }
}
