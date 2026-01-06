import 'package:get/get.dart';

import '../controllers/verifi_page_controller.dart';

class VerifiPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifiPageController>(
      () => VerifiPageController(),
    );
  }
}
