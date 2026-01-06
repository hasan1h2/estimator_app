import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EstimateAddItem1PageController extends GetxController {
  Rx<TextEditingController> editArea = TextEditingController().obs;
  RxString value1="Area".obs;
  RxBool isSubServ = false.obs;
  RxBool isSubOp = false.obs;
  RxBool isMainProPhoto = false.obs;
  RxBool isSubProPhoto = false.obs;
  void toggleSubServ() {isSubServ.value = !isSubServ.value;}
  void toggleSubOp() {isSubOp.value = !isSubOp.value;}
  void toggleProPhoto() {isMainProPhoto.value = !isMainProPhoto.value;}
  void toggleSubProPho() {isSubProPhoto.value = !isSubProPhoto.value;}
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

  // You can add more state variables or methods as needed

  // Method to handle form submission (for example)
  void onSubmit() {
    if (selectedServiceProduct.isNotEmpty||selectedSubServiceProduct.isNotEmpty) {
      // Handle the form submission logic (e.g., send data to the server)
      print("Form submitted with value: $selectedServiceProduct + $selectedSubServiceProduct");
    } else {
      // Handle the case where no value is selected
      print("Please select an item");
    }
  }
}
