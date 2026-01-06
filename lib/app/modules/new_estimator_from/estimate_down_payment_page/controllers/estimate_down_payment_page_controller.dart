import 'package:get/get.dart';

class EstimateDownPaymentPageController extends GetxController {
  //TODO: Implement EstimateDownPaymentPageController

  var selectedValue = ''.obs; // Using Rx (Reactive) for dynamic state management
  List<String> dropdownItems = ["No Discount", "Discount", "Flat"];


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
