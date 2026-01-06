import 'package:get/get.dart';

class EditServiceProductPageController extends GetxController {
  RxBool showMore = false.obs;
  RxInt selectIndex = 1.obs;
  void toggleMore(int index) {
    selectIndex.value=index;
    showMore.value = !showMore.value;

  }
}
