import 'dart:ui' show Color;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditPhotoPageController extends GetxController {
  RxInt selectedTool = 0.obs;
  RxInt selectedColor = 0.obs;
  RxInt size = 0.obs;
  void changeIndex(int index) {
    selectedTool.value = index;
  }
  void changeColor(int index) {
    selectedColor.value = index;
  }
  void changeSizeAdd() {
    size.value ++;
  }
  void changeSizeRem() {
    if(size.value>0){
      size.value --;
    }

  }

  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.cyan,
    Colors.purple,
  ];
}
