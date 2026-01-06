import 'package:get/get.dart';

import '../controllers/estimate_full_summary_page_controller.dart';

class EstimateFullSummaryPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EstimateFullSummaryPageController>(
      () => EstimateFullSummaryPageController(),
    );
  }
}
