import 'package:get/route_manager.dart';
import 'package:realtor_book/src/content_form/bindings/content_form_bindings.dart';
import 'package:realtor_book/src/content_form/screen/content_form_screen.dart';
import 'package:realtor_book/src/content_list/bindings/content_list_bindings.dart';
import 'package:realtor_book/src/content_list/screen/content_list_screen.dart';
import 'package:realtor_book/src/splash/splash_bindings.dart';
import 'package:realtor_book/src/splash/splash_screen.dart';

abstract class Routes {
  static const splash = "/splashPath";
  static const contentList = "/contentList";
  static const contentForm = "/contentForm";

  static List<GetPage> pages() {
    return [
      GetPage(
          name: Routes.splash,
          page: () => SplashScreen(),
          binding: SplashBindings()),
      GetPage(
          name: Routes.contentList,
          page: () => ContentListScreen(),
          binding: ContentListBindings()),
    ];
  }
}
