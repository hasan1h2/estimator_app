import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../routes/app_pages.dart';
class SinUpPageController extends GetxController {
  // Updated password regex to enforce minimum length
  Rx<TextEditingController> nameN = TextEditingController().obs;
  Rx<TextEditingController> email = TextEditingController().obs;
  Rx<TextEditingController> pass = TextEditingController().obs;
  Rx<TextEditingController> conPass = TextEditingController().obs;
  RxString name = ''.obs;
  RxString emailValue = ''.obs;
  RxString passValue = ''.obs;
  RxString conPassValue = ''.obs;
  var isObscure = true.obs, isObscureConPass = true.obs;
  final formKey = GlobalKey<FormState>(); // Declare formKey

  // Validators
  String? validateName(String? value) => value?.isEmpty ?? true ? 'Name cannot be empty' : null;

  String? validateEmail(String? value) => value?.isEmpty ?? true
      ? 'Email is required'
      : !StaticString.emailRegex.hasMatch(value!) ? 'Enter a valid email' : null;

  String? validatePassword(String? value) => value?.isEmpty ?? true
      ? 'Password is required'
      : !StaticString.passRegex.hasMatch(value!)
      ? 'Password must have at least one uppercase letter, one lowercase letter, one digit, and be at least 8 characters long'
      : null;

  String? validateConfirmPassword(String? value) => value?.isEmpty ?? true
      ? "Confirm Password can't be empty"
      : value != pass.value.text
      ? "Password does not match"
      : null;

  void saveOnTap() {
    if (formKey.currentState?.validate() ?? false) {
      name.value = nameN.value.text;
      emailValue.value = email.value.text;
      passValue.value = pass.value.text;
      conPassValue.value = conPass.value.text;

      // Valid form, clear controllers
      for (var ctrl in [nameN, email, pass, conPass]) {
        ctrl.value.clear();
        // Print the values of name, email, and password
        print('Name: ${name.value.toString()}================');
        print('Email: ${emailValue.value.toString()}==============');
        print('Password: ${passValue.value.toString()}=================');
      }
      // Navigate to Sign-In Page
      Get.toNamed(Routes.SIN_IN_PAGE);
    } else {
      // Handle validation failure
      print("Form validation failed.");
    }
  }
  // Toggle visibility of password and confirm password
  void togglePassword() => isObscure.value = !isObscure.value;
  void toggleConPassword() => isObscureConPass.value = !isObscureConPass.value;

  @override
  void onClose() {
    // Text controllers are automatically disposed due to being wrapped in Rx
    super.onClose();
  }
}
