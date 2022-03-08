import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_app/app/routes/app_pages.dart';

import '../../../data/database/note_database.dart';
import '../controllers/home_controller.dart';
import '../../../constatant/colors.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Daftar Cerita'),
          centerTitle: true,
          actions: [
            Obx(() => IconButton(
                onPressed: () {
                  Get.changeTheme(
                    Get.isDarkMode ? light : dark,
                  );
                  controller.isChange.value = true;
                },
                icon: controller.isChange.isFalse
                    ? Icon(Icons.sunny)
                    : Icon(Icons.nightlight_sharp)))
          ],
        ),
        body: StreamBuilder<List<Note>>(
          stream: controller.noteM.getAllNotesStream(),
          builder: (context, snapshot) {
            if (snapshot.data?.length == 0 || snapshot.data == null) {
              return Center(
                child: Text(
                  'Belum Ada Cerita Nih',
                ),
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
                itemCount: snapshot.data!.length,
                padding: EdgeInsets.all(20),
                itemBuilder: (context, index) {
                  Note note = snapshot.data![index];
                  return GestureDetector(
                    onTap: () => Get.defaultDialog(
                        middleText: "Pilih Apa Nih ?",
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Get.back();
                                Get.toNamed(Routes.EDIT_NOTES, arguments: note);
                              },
                              child: Text("Edit")),
                          ElevatedButton(
                              onPressed: () {
                                Get.back();
                                Get.toNamed(Routes.DETAIL_STORY,
                                    arguments: note);
                              },
                              child: Text("Lihat")),
                          ElevatedButton(
                              onPressed: () {
                                Get.back();
                                Get.defaultDialog(
                                  middleText: "Yakin Mau Dihapus ?",
                                  onConfirm: () =>
                                      controller.noteM.deleteNotes(note),
                                );
                              },
                              child: Text("Hapus")),
                        ]),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 100,
                      width: Get.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            note.judul,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Divider(
                            thickness: 2,
                            color: Colors.black,
                          ),
                          Text(note.tanggal,
                              style: TextStyle(
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ))
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(
                            Random().nextInt(256),
                            Random().nextInt(255),
                            Random().nextInt(255),
                            Random().nextInt(255),
                          ),
                          // image: DecorationImage(
                          //     image: FileImage(File(note.gambar)),
                          //     fit: BoxFit.cover),
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(20))),
                      margin: EdgeInsets.only(bottom: 20),
                    ),
                  );
                });
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Get.toNamed(Routes.ADD_NOTES),
          child: Icon(Icons.add_comment_rounded),
        ),
      ),
    );
  }
}
