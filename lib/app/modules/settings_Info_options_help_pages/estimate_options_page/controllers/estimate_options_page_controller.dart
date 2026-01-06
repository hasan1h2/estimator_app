import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EstimateOptionsPageController extends GetxController {


  // RxString  passError = ''.obs;
  // RxString  confPassError = ''.obs;
  // TextEditingControllers
  TextEditingController dis = TextEditingController();
  TextEditingController per = TextEditingController();


  final count = 0.obs;
  @override  var selectedValue = ''.obs; // Using Rx (Reactive) for dynamic state management
  List<String> dropdownItems = ["%", "*", "+"];

  // You can add more state variables or methods as needed

  // Method to handle form submission (for example)
  void onSubmit() {
    if (selectedValue.isNotEmpty) {
      // Handle the form submission logic (e.g., send data to the server)
      print("Form submitted with value: $selectedValue");
    } else {
      // Handle the case where no value is selected
      print("Please select an item");
    }
  }
}
