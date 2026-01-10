import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/main_from_mod.dart';

class EstimateAddItem1PageController extends GetxController {
  Rx<TextEditingController> editArea = TextEditingController().obs;

  RxList<MainFormModel> mainForms = <MainFormModel>[].obs;
  RxInt activeMainIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    addMainForm(); // initial main form
  }

  void addMainForm() {
    mainForms.add(MainFormModel());
    activeMainIndex.value = mainForms.length - 1;
  }

  void removeMainForm(int index) {
    if (index == 0) return; // prevent deleting first form

    final removed = mainForms.removeAt(index);
    removed.dispose();

    // Update active index safely
    if (activeMainIndex.value >= mainForms.length) {
      activeMainIndex.value = mainForms.length - 1;
    }
  }

  // Add item form to the active main form
  void addItemToActiveMain() {
    if (mainForms.isEmpty) return;

    final index = activeMainIndex.value;
    if (index < 0 || index >= mainForms.length) return;

    // Add a new item form to the active main form
    mainForms[index].addItemForm(index);
    update();  // Ensure the UI updates correctly (reactively)
  }

  @override
  void onClose() {
    for (var main in mainForms) {
      main.dispose();
    }
    super.onClose();
  }

  // Additional variables and methods
  RxString value1 = "Area".obs;
  RxBool isSubServ = false.obs;
  RxBool isSubOp = false.obs;
  RxBool isMainProPhoto = false.obs;
  RxBool isSubProPhoto = false.obs;

  void toggleSubServ() {
    isSubServ.value = !isSubServ.value;
  }

  void toggleSubOp() {
    isSubOp.value = !isSubOp.value;
  }

  void toggleProPhoto() {
    isMainProPhoto.value = !isMainProPhoto.value;
  }

  void toggleSubProPho() {
    isSubProPhoto.value = !isSubProPhoto.value;
  }

  void saveOnTap() {
    value1.value = editArea.value.text;
    Get.back();
    editArea.value.clear();
  }

  void cancelOnTap() {
    Get.back();
    editArea.value.clear();
  }

  var selectedServiceProduct = ''.obs; // Using Rx (Reactive) for dynamic state management
  var selectedSubServiceProduct = ''.obs; // Using Rx (Reactive) for dynamic state management
  var selectedOp = ''.obs; // Using Rx (Reactive) for dynamic state management
  List<String> serviceProduct = ["Car", "Honda", "Bus"];
  var selectedValue1 = ''.obs; // Using Rx (Reactive) for dynamic state management
  List<String> subServiceProduct = ["Car Wash", "Plumbing", "Electrical"];
  List<String> btnTitle = ["Add to Estimate", "Add New Area"];
  List<String> selectOp = ["Black", "White", "Red"];

  // Method to handle form submission (for example)
  void onSubmit() {
    if (selectedServiceProduct.isNotEmpty || selectedSubServiceProduct.isNotEmpty) {
      print("Form submitted with value: $selectedServiceProduct + $selectedSubServiceProduct");
    } else {
      print("Please select an item");
    }
  }
}
