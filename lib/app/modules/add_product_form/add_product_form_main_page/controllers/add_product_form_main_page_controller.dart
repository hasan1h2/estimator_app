import 'package:get/get.dart';
import '../../../../routes/app_pages.dart';
class AddProductFormMainPageController extends GetxController {
   RxString routesSelext="".obs;
  void toggleRoutes(int index) {
    routesSelext.value = index.toString();
  }
  void routes() {
    if (routesSelext.value == "0") {
      Get.toNamed(Routes.ADD_PROSERVICE_PAGE);
    } else if (routesSelext.value == "1") {
      Get.toNamed(Routes.ADD_PROSERVICE_PARENT_PAGE);
    } else if (routesSelext.value == "2") {
      Get.toNamed(Routes.SUB_SERVICE_OP_PAGE);
    } else if (routesSelext.value == "3") {
      Get.toNamed(Routes.EDIT_SERVICE_PRODUCT_PAGE);
    }
  }


}
