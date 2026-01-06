import 'package:get/get.dart';

import '../controllers/add_product_form_main_page_controller.dart';

class AddProductFormMainPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddProductFormMainPageController>(
      () => AddProductFormMainPageController(),
    );
  }
}
