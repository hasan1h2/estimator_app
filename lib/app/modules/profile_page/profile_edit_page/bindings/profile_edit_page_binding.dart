import 'package:get/get.dart';

import '../../profile_main_page/controllers/profile_main_page_controller.dart';
import '../controllers/profile_edit_page_controller.dart';

class ProfileEditPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileMainPageController>(
      () => ProfileMainPageController(),
    );
  }
}
