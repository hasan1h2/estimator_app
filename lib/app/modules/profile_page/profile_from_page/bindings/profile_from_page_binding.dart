import 'package:get/get.dart';

<<<<<<< HEAD
import '../../profile_main_page/controllers/profile_main_page_controller.dart';
=======
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
import '../controllers/profile_from_page_controller.dart';

class ProfileFromPageBinding extends Bindings {
  @override
  void dependencies() {
<<<<<<< HEAD
    Get.lazyPut<ProfileMainPageController>(
      () => ProfileMainPageController(),
=======
    Get.lazyPut<ProfileFromPageController>(
      () => ProfileFromPageController(),
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
    );
  }
}
