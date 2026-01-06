import 'package:get/get.dart';

import '../controllers/new_estimate_add_page_controller.dart';

class NewEstimateAddPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewEstimateAddPageController>(
      () => NewEstimateAddPageController(),
    );
  }
}
