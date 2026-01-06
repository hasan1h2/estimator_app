import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ProfileMainPageController extends GetxController {
  final formKey = GlobalKey<FormState>();

  // Reactive text controllers
  Rx<TextEditingController> comNameCtrl = TextEditingController().obs;
  Rx<TextEditingController> emailCtrl = TextEditingController().obs;
  Rx<TextEditingController> phoneNumCtrl = TextEditingController().obs;
  Rx<TextEditingController> addressCtrl = TextEditingController().obs;
  Rx<TextEditingController> webSiteCtrl = TextEditingController().obs;

  // Reactive values for storing form data
  RxString comNameVal = 'Titan Lightening'.obs,
      emailVal = 'sales@titanprolighting.com'.obs,
      phoneNumVal = '440-496-6744'.obs,
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
      comNameVal.value = comNameCtrl.value.text;
      emailVal.value = emailCtrl.value.text;
      phoneNumVal.value = phoneNumCtrl.value.text;
      addressVal.value = addressCtrl.value.text;
      webSiteVal.value = webSiteCtrl.value.text;

      // Clear all controllers (Optional, only if you want to reset text fields)
      for (var ctrl in [comNameCtrl, emailCtrl, phoneNumCtrl, addressCtrl, webSiteCtrl]) {
        ctrl.value.clear();
      }

      // Print the collected data (You can remove this for production)
      print(
        'Name: ${comNameVal.value}\nAddress: ${addressVal.value}\nEmail: ${emailVal.value}\nPhone: ${phoneNumVal.value}\nWebsite: ${webSiteVal.value}',
      );

      return true;
    } else {
      print("Form validation failed.");
      return false;
    }
  }
}

