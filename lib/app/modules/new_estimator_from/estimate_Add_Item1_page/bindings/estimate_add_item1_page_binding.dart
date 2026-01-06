import 'package:get/get.dart';

import '../../edit_photo_page/controllers/edit_photo_page_controller.dart';
import '../controllers/estimate_add_item1_page_controller.dart';

class EstimateAddItem1PageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EstimateAddItem1PageController>(
      () => EstimateAddItem1PageController(),
    );
    Get.lazyPut<EditPhotoPageController>(
      () => EditPhotoPageController(),
    );
  }
}
