import 'package:get/get.dart';

import '../controllers/add_proservice_page_controller.dart';

class AddProservicePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddProservicePageController>(
      () => AddProservicePageController(),
    );
  }
}
