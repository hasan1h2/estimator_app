import 'package:get/get.dart';

import '../controllers/profile_main_page_controller.dart';

class ProfileMainPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileMainPageController>(
      () => ProfileMainPageController(),
    );
  }
}
