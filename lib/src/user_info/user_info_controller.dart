import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:realtor_book/src/common/utils.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:realtor_book/src/config/images.dart';

class UserInfoController extends GetxController {
  GlobalKey key = GlobalKey();
  RxString name = "".obs;
  RxString contactNumber = "".obs;
  TextEditingController nameController = TextEditingController();
  TextEditingController contactNumberController = TextEditingController();

  onNameChange() {
    name.value = nameController.text;
  }

  onPhoneChange() {
    contactNumber.value = contactNumberController.text;
  }

  onSaveTapped() async {
    Uint8List data = await Utils.capture(key);
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    File file =
        new File(join(documentDirectory.path, Images.userInfoImageName()));
    file.writeAsBytesSync(data);
  }
}
