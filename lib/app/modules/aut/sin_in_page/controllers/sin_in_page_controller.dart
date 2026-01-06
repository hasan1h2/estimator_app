import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/utils/static_string/static_string.dart';
import '../../../../routes/app_pages.dart';

class SinInPageController extends GetxController {
  Rx<TextEditingController> email = TextEditingController().obs;
  Rx<TextEditingController> pass = TextEditingController().obs;
  RxString emailValue = ''.obs;
  RxString passValue = ''.obs;
  final formKey = GlobalKey<FormState>(); // Declare formKey


  var isObscure = true.obs;
  void togglePassword()=> isObscure.value = !isObscure.value;

  String? validateEmail(String? value) => value?.isEmpty ?? true
      ? 'Email is required'
      : !StaticString.emailRegex.hasMatch(value!) ? 'Enter a valid email' : null;

  String? validatePassword(String? value) => value?.isEmpty ?? true
      ? 'Password is required'
      : !StaticString.passRegex.hasMatch(value!)
      ? 'Password must have at least one uppercase letter, one lowercase letter, one digit, and be at least 8 characters long'
      : null;



  bool saveOnTap() {
    if (formKey.currentState?.validate() ?? false) {
      emailValue.value = email.value.text;
      passValue.value = pass.value.text;

      // Valid form, clear controllers
      for (var ctrl in [ email, pass, ]) {
        ctrl.value.clear();
        // Print the values of name, email, and password
        print('Email: ${emailValue.value.toString()}==============');
        print('Password: ${passValue.value.toString()}=================');
      }
      // Navigate to Sign-In Page
      // Get.toNamed(Routes.SUCCESS_PAGE);
      return true;
    } else {
      // Handle validation failure
      print("Form validation failed.");
      return false;
    }
  }

}
