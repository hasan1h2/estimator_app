import 'package:get/get.dart';

class GeneralControllerController extends GetxController {
  RxInt selectIndexButtomNa = 0.obs;
  var currentIndex = 0.obs;

  void chIndexButtomNav(int index) {
    selectIndexButtomNa.value = index;
  }


  // Function to change index
  void changeIndex(int index) {
  currentIndex.value = index;
  }
  RxBool showMore = false.obs;
  void toggleMore() {
    showMore.value = !showMore.value;
  }  RxBool showMore1 = false.obs;
  void toggleMore1() {
    showMore1.value = !showMore1.value;
  }
  var selectedValue = "".obs;

  void selectItem(String value) {
    selectedValue.value = value;
    showMore(false);
  }



}
