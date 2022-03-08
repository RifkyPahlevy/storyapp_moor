import 'package:get/get.dart';

import 'package:story_app/app/modules/add_notes/bindings/add_notes_binding.dart';
import 'package:story_app/app/modules/add_notes/views/add_notes_view.dart';
import 'package:story_app/app/modules/detail_story/bindings/detail_story_binding.dart';
import 'package:story_app/app/modules/detail_story/views/detail_story_view.dart';
import 'package:story_app/app/modules/edit_notes/bindings/edit_notes_binding.dart';
import 'package:story_app/app/modules/edit_notes/views/edit_notes_view.dart';
import 'package:story_app/app/modules/home/bindings/home_binding.dart';
import 'package:story_app/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ADD_NOTES,
      page: () => AddNotesView(),
      binding: AddNotesBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_NOTES,
      page: () => EditNotesView(),
      binding: EditNotesBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_STORY,
      page: () => DetailStoryView(),
      binding: DetailStoryBinding(),
    ),
  ];
}
