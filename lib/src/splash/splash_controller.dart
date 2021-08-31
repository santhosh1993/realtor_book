import 'package:get/get.dart';
import 'package:realtor_book/src/config/router.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 1), () {
      Get.offAllNamed(Routes.contentForm);
    });
  }
}
