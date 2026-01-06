import 'package:get/get.dart';

import '../controllers/edit_company_info_page_controller.dart';

class EditCompanyInfoPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditCompanyInfoPageController>(
      () => EditCompanyInfoPageController(),
    );
  }
}
