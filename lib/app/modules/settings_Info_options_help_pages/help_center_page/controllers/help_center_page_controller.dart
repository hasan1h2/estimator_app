import 'package:get/get.dart';

class HelpCenterPageController extends GetxController {
  //TODO: Implement HelpCenterPageController

  void toggleMore() {
    showMore.value = !showMore.value;
  } RxBool showMore = false.obs;
}
