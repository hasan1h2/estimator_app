import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../inner_widget/add_item_full_from/add_item_full_from.dart';

class MainFormModel {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final RxList<Widget> itemForms = <Widget>[].obs; // List to store item forms

  // Add item form dynamically
  void addItemForm(int index) {
    late Widget itemWidget;
    itemWidget = AddItemFullFrom(index: index,
      onDelete: () {
        itemForms.remove(itemWidget);
      },
    );
    itemForms.add(itemWidget);
  }

  // Dispose all controllers
  void dispose() {
    nameController.dispose();
  }
}
