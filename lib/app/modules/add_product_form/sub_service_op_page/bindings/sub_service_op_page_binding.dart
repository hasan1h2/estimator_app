import 'package:get/get.dart';

import '../controllers/sub_service_op_page_controller.dart';

class SubServiceOpPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubServiceOpPageController>(
      () => SubServiceOpPageController(),
    );
  }
}
