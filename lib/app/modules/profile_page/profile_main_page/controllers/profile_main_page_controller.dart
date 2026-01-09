import 'package:flutter/material.dart';
import 'package:get/get.dart';

<<<<<<< HEAD
import '../../../../data/utils/static_string/static_string.dart';
=======
import 'package:get/get.dart';
import 'package:flutter/material.dart';
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840

class ProfileMainPageController extends GetxController {
  final formKey = GlobalKey<FormState>();

  // Reactive text controllers
  Rx<TextEditingController> comNameCtrl = TextEditingController().obs;
  Rx<TextEditingController> emailCtrl = TextEditingController().obs;
  Rx<TextEditingController> phoneNumCtrl = TextEditingController().obs;
  Rx<TextEditingController> addressCtrl = TextEditingController().obs;
  Rx<TextEditingController> webSiteCtrl = TextEditingController().obs;
<<<<<<< HEAD
  Rx<TextEditingController> addressCtrl2 = TextEditingController().obs;
  Rx<TextEditingController> cityCtrl = TextEditingController().obs;
  Rx<TextEditingController> stateCtrl = TextEditingController().obs;
  Rx<TextEditingController> zipCtrl = TextEditingController().obs;




=======
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840

  // Reactive values for storing form data
  RxString comNameVal = 'Titan Lightening'.obs,
      emailVal = 'sales@titanprolighting.com'.obs,
      phoneNumVal = '440-496-6744'.obs,
<<<<<<< HEAD
      webSiteVal = 'https://www.company.com'.obs,
      addressVal = '8059 lewis road 304 Berea, OH 44017'.obs,
      address2Val = ''.obs,
      cityVal = ''.obs,
      stateVal = ''.obs,
      zipVal = ''.obs;

  // Getter to dynamically generate the profile text list based on reactive variables
  List<Map<String, dynamic>> get profileText {
    return [
      {'title': 'Company Name', 'value': comNameVal.value},
      {'title': 'Phone Number', 'value': phoneNumVal.value},
      {'title': 'Email Address', 'value': emailVal.value},
      {'title': 'Website', 'value': webSiteVal.value},
      {'title': 'Company Address', 'value': addressVal.value},
    ];
  }

  // ====================================validate from=======================
  String? validateNotEmpty(String? value, String field) =>
      value?.isEmpty ?? true ? '$field cannot be empty' : null;
  String? validateEmail(String? value) => value?.isEmpty ?? true
      ? 'Email is required'
      : !StaticString.emailRegex.hasMatch(value!)
      ? 'Enter a valid email'
      : null;

  // Function to save the form data
  void saveOnTap() {
    comNameVal.value = comNameCtrl.value.text;
    emailVal.value = emailCtrl.value.text;
    phoneNumVal.value = phoneNumCtrl.value.text;
    addressVal.value = addressCtrl.value.text;
    webSiteVal.value = webSiteCtrl.value.text;

    // Clear the text controllers after saving
    for (var ctrl in [
      comNameCtrl,
      emailCtrl,
      phoneNumCtrl,
      addressCtrl,
      webSiteCtrl,
    ]) {
      ctrl.value.clear();
    }

    print(
      'Name: ${comNameVal.value}\nAddress: ${addressVal.value}\nEmail: ${emailVal.value}\nPhone: ${phoneNumVal.value}\nWebsite: ${webSiteVal.value}',
    );
  }

  bool saveOnTapProfrom() {
    if (formKey.currentState?.validate() ?? false) {
      // Save values and clear controllers
=======
      addressVal = ''.obs,
      webSiteVal = 'https://www.company.com'.obs,
      compAddVal = '8059 lewis road 304 Berea, OH 44017'.obs;

  // Dynamic profile data list
  late List<Map<String, dynamic>> profileText = [
    {'title': 'Company Name', 'value': comNameVal.value},
    {'title': 'Phone Number', 'value': phoneNumVal.value},
    {'title': 'Email Address', 'value': emailVal.value},
    {'title': 'Website', 'value': webSiteVal.value},
    {'title': 'Company Address', 'value': compAddVal.value},
  ];

  // Function to save the form data
  bool saveOnTap() {
    if (formKey.currentState?.validate() ?? false) {
      // Save values and update the reactive values
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
      comNameVal.value = comNameCtrl.value.text;
      emailVal.value = emailCtrl.value.text;
      phoneNumVal.value = phoneNumCtrl.value.text;
      addressVal.value = addressCtrl.value.text;
      webSiteVal.value = webSiteCtrl.value.text;
<<<<<<< HEAD
      cityVal.value = cityCtrl.value.text;
      stateVal.value = stateCtrl.value.text;
      zipVal.value = zipCtrl.value.text;

      // Clear all controllers
      for (var ctrl in [
        comNameCtrl,
        emailCtrl,
        phoneNumCtrl,
        addressCtrl,
        webSiteCtrl,
        cityCtrl,
        stateCtrl,
        zipCtrl,
      ]) {
        ctrl.value.clear();
      }

      // Print the collected data
      print(
        'Name: ${comNameVal.value}\nAddress: ${addressVal.value}\nEmail: ${emailVal.value}\nPhone: ${phoneNumVal.value}\nWebsite: ${webSiteVal.value}\address2Val: ${address2Val.value}\nCity: ${cityVal.value}\nstate: ${stateVal.value}\nZip: ${zipVal.value}',
=======

      // Clear all controllers (Optional, only if you want to reset text fields)
      for (var ctrl in [comNameCtrl, emailCtrl, phoneNumCtrl, addressCtrl, webSiteCtrl]) {
        ctrl.value.clear();
      }

      // Print the collected data (You can remove this for production)
      print(
        'Name: ${comNameVal.value}\nAddress: ${addressVal.value}\nEmail: ${emailVal.value}\nPhone: ${phoneNumVal.value}\nWebsite: ${webSiteVal.value}',
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
      );

      return true;
    } else {
      print("Form validation failed.");
      return false;
    }
  }
}
<<<<<<< HEAD
=======

>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
