import 'package:get/get.dart';

import '../controllers/profile_from_page_controller.dart';

class ProfileFromPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileFromPageController>(
      () => ProfileFromPageController(),
    );
  }
}
