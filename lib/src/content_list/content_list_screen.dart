import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtor_book/src/common/custom_appbar.dart';
import 'content_list_controller.dart';

class ContentListScreen extends GetView<ContentListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Property List",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text("asdflna asfl n"),
      ),
    );
  }
}
