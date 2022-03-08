import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddNotesController extends GetxController {
  TextEditingController judulC = TextEditingController();

  TextEditingController ceritaC = TextEditingController();
  RxBool isLoading = false.obs;

  late ImagePicker selectPic;

  XFile? pictData = null;

  void resetData() {
    pictData = null;
    update();
  }

  void selectPict() async {
    final checkPict = await selectPic.pickImage(source: ImageSource.gallery);

    if (checkPict != null) {
      pictData = checkPict;
      update();
    } else {
      pictData = null;
      update();
    }
  }

  @override
  void onInit() {
    selectPic = ImagePicker();
    super.onInit();
  }
}
