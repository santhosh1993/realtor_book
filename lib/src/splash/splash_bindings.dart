import 'package:get/instance_manager.dart';
import 'package:realtor_book/src/splash/splash_controller.dart';

class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
