import 'package:get/get.dart';

import '../controllers/estimate_down_payment_page_controller.dart';

class EstimateDownPaymentPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EstimateDownPaymentPageController>(
      () => EstimateDownPaymentPageController(),
    );
  }
}
