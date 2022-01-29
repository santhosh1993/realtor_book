import 'package:path_provider/path_provider.dart';
import 'dart:io';

class FileManager {
  static Future<String> getFilePath(String fileName) async {
    Directory appDocumentsDirectory = await getApplicationDocumentsDirectory();
    String appDocumentsPath = appDocumentsDirectory.path;
    String filePath = '$appDocumentsPath/$fileName';

    return filePath;
  }
}
