import 'package:get/get.dart';
import 'package:story_app/app/data/database/note_database.dart';

class HomeController extends GetxController {
  RxBool isChange = false.obs;
  NoteManager noteM = NoteManager();
}
