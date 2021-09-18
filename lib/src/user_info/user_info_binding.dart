import 'package:get/get.dart';
import 'package:realtor_book/src/user_info/user_info_controller.dart';

class UserInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(UserInfoController());
  }
}
