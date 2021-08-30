import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:realtor_book/src/config/router.dart';

class RealtorBookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: Routes.pages(),
        initialRoute: Routes.splash);
  }
}
