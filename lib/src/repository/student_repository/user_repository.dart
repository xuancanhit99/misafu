import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misafu/src/features/authentication/models/student_model.dart';

class StudentRepository extends GetxController {
  static StudentRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createStudent(StudentModel student) async {
    await _db.collection("Students").add(student.toJson()).whenComplete(() =>
      Get.snackbar("Success", "Your account has been created.",
      snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green.withOpacity(0.1),
        colorText: Colors.green
      )
    ).catchError((error, stackTrace){
      Get.snackbar("Error", "Some thing went wrong. Try again.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green.withOpacity(0.1),
          colorText: Colors.green
      );
      print(error.toString());

    });
  }

}