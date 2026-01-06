import 'package:get/get.dart';

import '../controllers/sin_up_page_controller.dart';

class SinUpPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SinUpPageController>(
      () => SinUpPageController(),
    );
  }
}
