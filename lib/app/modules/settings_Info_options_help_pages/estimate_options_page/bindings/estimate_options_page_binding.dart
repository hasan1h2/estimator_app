import 'package:get/get.dart';

import '../controllers/estimate_options_page_controller.dart';

class EstimateOptionsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EstimateOptionsPageController>(
      () => EstimateOptionsPageController(),
    );
  }
}
