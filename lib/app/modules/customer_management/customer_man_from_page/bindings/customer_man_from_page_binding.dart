import 'package:get/get.dart';

import '../controllers/customer_man_from_page_controller.dart';

class CustomerManFromPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerManFromPageController>(
      () => CustomerManFromPageController(),
    );
  }
}
