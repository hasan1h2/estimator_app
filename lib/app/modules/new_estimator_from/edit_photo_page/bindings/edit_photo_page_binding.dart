import 'package:get/get.dart';

import '../controllers/edit_photo_page_controller.dart';

class EditPhotoPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditPhotoPageController>(
      () => EditPhotoPageController(),
    );
  }
}
