import 'package:get/get.dart';

import '../../sin_in_page/controllers/sin_in_page_controller.dart';
import '../controllers/forgot_pass_page_controller.dart';

class ForgotPassPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPassPageController>(
      () => ForgotPassPageController(),
    );
    Get.lazyPut<SinInPageController>(
      () => SinInPageController(),
    );
  }
}
