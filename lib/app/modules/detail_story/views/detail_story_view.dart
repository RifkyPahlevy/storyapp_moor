import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/database/note_database.dart';
import '../controllers/detail_story_controller.dart';

class DetailStoryView extends GetView<DetailStoryController> {
  Note note = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Center(
              child: Text(
                note.judul,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.black,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: Get.height * 0.5,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: FileImage(File(note.gambar)), fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 2,
              color: Colors.black,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              note.tanggal,
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontSize: 13),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              note.cerita,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontStyle: FontStyle.italic),
            )
          ],
        ),
      ),
    );
  }
}
