import 'package:get/get.dart';

import '../controllers/edit_service_product_page_controller.dart';

class EditServiceProductPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditServiceProductPageController>(
      () => EditServiceProductPageController(),
    );
  }
}
