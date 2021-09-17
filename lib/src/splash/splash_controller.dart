import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:realtor_book/src/config/router.dart';
import 'dart:async';

import 'package:path/path.dart';
import 'package:realtor_book/src/user_info/user_info_add_bottom_sheet.dart';
import 'package:sqflite/sqflite.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    WidgetsFlutterBinding.ensureInitialized();
    checkUserInfo();
  }

  checkUserInfo() {
    Future.delayed(Duration(seconds: 1), () {
      Get.bottomSheet(UserInfoAddBottomSheet());
    });
  }

  checkDataBase() async {
    final database =
        openDatabase(join(await getDatabasesPath(), 'realtor_book_database.db'),
            onCreate: (db, version) {
              return createTables(db);
            },
            version: 1,
            onOpen: (db) {
              Future.delayed(Duration(seconds: 1), () {
                Get.offAllNamed(Routes.contentForm);
              });
            },
            onUpgrade: (db, oldVersion, newVerison) {});
  }

  Future<void> createTables(Database db) async {
    await db.execute(
        'CREATE TABLE user(id INTEGER PRIMARY KEY, name TEXT, phone TEXT)');
    await db.execute(
        'CREATE TABLE property(id INTEGER PRIMARY KEY, userId INTEGER)');
    await db.execute(
        'CREATE TABLE detail(id INTEGER PRIMARY KEY, propertyId INTEGER, title TEXT, description TEXT)');
    await db.execute(
        'CREATE TABLE file(id INTEGER PRIMARY KEY, propertyId INTEGER, fileName TEXT, fileType INTEGER)');
  }
}
