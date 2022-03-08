import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_app/app/modules/home/controllers/home_controller.dart';

import '../../../data/database/note_database.dart';
import '../controllers/edit_notes_controller.dart';

class EditNotesView extends GetView<EditNotesController> {
  Note note = Get.arguments;
  HomeController homeC = Get.find();

  @override
  Widget build(BuildContext context) {
    controller.judulC.text = note.judul;
    controller.ceritaC.text = note.cerita;
    String gambar = note.gambar;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Ubah Cerita"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  homeC.noteM.editNotes(
                    Note(
                      id: note.id,
                      judul: controller.judulC.text,
                      cerita: controller.ceritaC.text,
                      gambar: gambar,
                      tanggal: note.tanggal,
                    ),
                  );
                  Get.back();
                },
                icon: Icon(Icons.edit))
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            GetBuilder<EditNotesController>(
              builder: (c) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: gambar != null
                      ? Image.file(File(gambar))
                      : Center(
                          child: ElevatedButton(
                              onPressed: () => c.selectPict(),
                              child: Text("Tambah Data")),
                        ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              textCapitalization: TextCapitalization.sentences,
              controller: controller.judulC,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Judul"),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              textCapitalization: TextCapitalization.sentences,
              controller: controller.ceritaC,
              keyboardType: TextInputType.multiline,
              maxLines: 50,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Cerita"),
            ),
          ],
        ),
      ),
    );
  }
}
