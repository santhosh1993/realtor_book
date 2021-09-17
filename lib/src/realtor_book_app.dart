import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:realtor_book/src/config/router.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class RealtorBookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: Routes.pages(),
        initialRoute: Routes.splash);
  }
}
