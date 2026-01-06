import 'package:get/get.dart';

import '../controllers/help_center_page_controller.dart';

class HelpCenterPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HelpCenterPageController>(
      () => HelpCenterPageController(),
    );
  }
}
