import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_string/static_string.dart';

class NewEstimateAddPageController extends GetxController {
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

// class NewEstimateAddPageController extends GetxController {
//   //TODO: Implement NewEstimateAddPageController
//
//   Rx<TextEditingController> fName = TextEditingController().obs;
//   Rx<TextEditingController> lName = TextEditingController().obs;
//   Rx<TextEditingController> email = TextEditingController().obs;
//   Rx<TextEditingController> phoneNum = TextEditingController().obs;
//   Rx<TextEditingController> adress = TextEditingController().obs;
//   Rx<TextEditingController> city = TextEditingController().obs;
//   Rx<TextEditingController> state = TextEditingController().obs;
//   Rx<TextEditingController> zip = TextEditingController().obs;
//   RxString fNameVal = ''.obs;
//   RxString lNameVal = ''.obs;
//   RxString emailVal = ''.obs;
//   RxString phoneNumVal = ''.obs;
//   RxString adressVal = ''.obs;
//   RxString cityVal = ''.obs;
//   RxString stateVal = ''.obs;
//   RxString zipVal = ''.obs;
//   var isObscure = true.obs, isObscureConPass = true.obs;
//   final formKey = GlobalKey<FormState>(); // Declare formKey
//   // Validators
//   String? validateFName(String? value) => value?.isEmpty ?? true ? 'Name cannot be empty' : null;
//   String? validateLName(String? value) => value?.isEmpty ?? true ? 'Last Name cannot be empty' : null;
//   String? validatePhon(String? value) => value?.isEmpty ?? true ? 'Phone number cannot be empty' : null;
//   String? validateAdr(String? value) => value?.isEmpty ?? true ? 'Adress cannot be empty' : null;
//   String? validateCity(String? value) => value?.isEmpty ?? true ? 'City cannot be empty' : null;
//   String? validateState(String? value) => value?.isEmpty ?? true ? 'State cannot be empty' : null;
//   String? validateZip(String? value) => value?.isEmpty ?? true ? 'Zip cannot be empty' : null;
//
//
//   String? validateEmail(String? value) => value?.isEmpty ?? true
//       ? 'Email is required'
//       : !StaticString.emailRegex.hasMatch(value!) ? 'Enter a valid email' : null;
//
//
//   bool saveOnTap() {
//     if (formKey.currentState?.validate() ?? false) {
//       fNameVal.value = fName.value.text;
//       lNameVal.value = lName.value.text;
//       emailVal.value = email.value.text;
//       phoneNumVal.value = phoneNum.value.text;
//       adressVal.value = adress.value.text;
//       cityVal.value = city.value.text;
//       stateVal.value = state.value.text;
//       zipVal.value = zip.value.text;
//
//
//       // Valid form, clear controllers
//       for (var ctrl in [fName, email,lName,phoneNum,adress,city,state,zip]) {
//         ctrl.value.clear();
//         // Print the values of name, email, and password
//         print('Name: ${fNameVal.value.toString()}================');
//         print('lName: ${lNameVal.value.toString()}==============');
//         print('Email: ${emailVal.value.toString()}==============');
//         print('phone: ${phoneNumVal.value.toString()}==============');
//         print('city: ${cityVal.value.toString()}==============');
//         print('state: ${stateVal.value.toString()}==============');
//         print('zip: ${zipVal.value.toString()}==============');
//       }
//       // Navigate to Sign-In Page
//       return true;
//     } else {
//       // Handle validation failure
//       print("Form validation failed.");
//       return false;
//     }
//   }
// }
