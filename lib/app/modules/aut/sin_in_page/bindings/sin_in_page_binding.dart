import 'package:get/get.dart';

import '../controllers/sin_in_page_controller.dart';

class SinInPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SinInPageController>(
      () => SinInPageController(),
    );
  }
}
