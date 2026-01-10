import 'package:flutter/material.dart';

class SubFormModel {
  final TextEditingController titleController =
  TextEditingController();

  // Dispose controller when needed
  void dispose() {
    titleController.dispose();
  }
}
