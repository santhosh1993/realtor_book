import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UserInfoController extends GetxController {
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
}
