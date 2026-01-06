import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/utils/static_string/static_string.dart';

class CustomerManFromPageController extends GetxController {
  Rx<TextEditingController> fName = TextEditingController().obs;
  Rx<TextEditingController> lName = TextEditingController().obs;
  Rx<TextEditingController> email = TextEditingController().obs;
  Rx<TextEditingController> phoneNum = TextEditingController().obs;
  Rx<TextEditingController> address = TextEditingController().obs;
  Rx<TextEditingController> city = TextEditingController().obs;
  Rx<TextEditingController> state = TextEditingController().obs;
  Rx<TextEditingController> zip = TextEditingController().obs;

  RxString fNameVal = ''.obs,
      lNameVal = ''.obs,
      emailVal = ''.obs,
      phoneNumVal = ''.obs,
      addressVal = ''.obs,
      cityVal = ''.obs,
      stateVal = ''.obs,
      zipVal = ''.obs;

  var isObscure = true.obs;
  final formKey = GlobalKey<FormState>();

  String? validateNotEmpty(String? value, String field) =>
      value?.isEmpty ?? true ? '$field cannot be empty' : null;

  String? validateEmail(String? value) => value?.isEmpty ?? true
      ? 'Email is required'
      : !StaticString.emailRegex.hasMatch(value!)
      ? 'Enter a valid email'
      : null;

  bool saveOnTap() {
    if (formKey.currentState?.validate() ?? false) {
      // Save values and clear controllers
      fNameVal.value = fName.value.text;
      lNameVal.value = lName.value.text;
      emailVal.value = email.value.text;
      phoneNumVal.value = phoneNum.value.text;
      addressVal.value = address.value.text;
      cityVal.value = city.value.text;
      stateVal.value = state.value.text;
      zipVal.value = zip.value.text;

      // Clear all controllers
      for (var ctrl in [
        fName,
        lName,
        email,
        phoneNum,
        address,
        city,
        state,
        zip,
      ]) {
        ctrl.value.clear();
      }

      // Print the collected data
      print(
        'Name: ${fNameVal.value}\nLast Name: ${lNameVal.value}\nEmail: ${emailVal.value}\nPhone: ${phoneNumVal.value}\nCity: ${cityVal.value}\nState: ${stateVal.value}\nZip: ${zipVal.value}',
      );

      return true;
    } else {
      print("Form validation failed.");
      return false;
    }
  }
}
