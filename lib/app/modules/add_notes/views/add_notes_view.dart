import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_app/app/data/database/note_database.dart';
import 'package:story_app/app/modules/home/controllers/home_controller.dart';
import 'package:intl/intl.dart';
import '../controllers/add_notes_controller.dart';

class AddNotesView extends GetView<AddNotesController> {
  HomeController homeC = Get.find();
  @override
  Widget build(BuildContext context) {
    String tanggal = DateFormat.yMd().add_jm().format(DateTime.now());

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tambah Cerita'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                homeC.noteM.insertNote(Note(
                    judul: controller.judulC.text,
                    cerita: controller.ceritaC.text,
                    gambar: controller.pictData!.path,
                    tanggal: tanggal));
                Get.back();
              },
              icon: Icon(Icons.add),
            )
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            GetBuilder<AddNotesController>(
              builder: (c) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: c.pictData != null
                      ? Stack(
                          children: [
                            Image.file(File(c.pictData!.path)),
                            IconButton(
                                onPressed: () => c.resetData(),
                                icon: Icon(Icons.delete))
                          ],
                        )
                      : Center(
                          child: ElevatedButton(
                              onPressed: () => c.selectPict(),
                              child: Text("Tambah Foto")),
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
              controller: controller.ceritaC,
              textCapitalization: TextCapitalization.sentences,
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
