import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/app/modules/main_from/widget/sub_form_mode.dart';

class MainFormModel {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final RxList<SubFormModel> subForms = <SubFormModel>[].obs;

  // Add sub form
  void addSubForm() {
    subForms.add(SubFormModel());
  }

  // Remove sub form safely
  void removeSubForm(int index) {
    final removed = subForms.removeAt(index); // remove first
    removed.dispose(); // then dispose
  }

  // Dispose all controllers
  void dispose() {
    nameController.dispose();
    for (var s in subForms) {
      s.dispose();
    }
  }
}
