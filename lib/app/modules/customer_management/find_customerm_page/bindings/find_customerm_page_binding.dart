import 'package:get/get.dart';

import '../controllers/find_customerm_page_controller.dart';

class FindCustomermPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FindCustomermPageController>(
      () => FindCustomermPageController(),
    );
  }
}
