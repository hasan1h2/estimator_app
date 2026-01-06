import 'package:get/get.dart';

import '../controllers/add_proservice_parent_page_controller.dart';

class AddProserviceParentPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddProserviceParentPageController>(
      () => AddProserviceParentPageController(),
    );
  }
}
