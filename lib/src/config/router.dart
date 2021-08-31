import 'package:get/route_manager.dart';
import 'package:realtor_book/src/content_form/content_form_bindings.dart';
import 'package:realtor_book/src/content_form/content_form_screen.dart';
import '../content_list/content_list_bindings.dart';
import '../content_list/content_list_screen.dart';
import '../splash/splash_bindings.dart';
import '../splash/splash_screen.dart';

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
      GetPage(
          name: Routes.contentForm,
          page: () => ContentFormScreen(),
          binding: ContentFormBindings()),
    ];
  }
}
