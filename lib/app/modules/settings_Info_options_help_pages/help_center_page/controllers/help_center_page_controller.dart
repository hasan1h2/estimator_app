import 'package:get/get.dart';

class HelpCenterPageController extends GetxController {
<<<<<<< HEAD
  // Use a map to manage the showMore states dynamically
  RxMap<int, RxBool> showMoreMap = <int, RxBool>{}.obs;

  // Toggle the state for a specific section based on the index
  void toggleMore(int index) {
    if (!showMoreMap.containsKey(index)) {
      showMoreMap[index] = false.obs;  // Initialize the state if not present
    }
    showMoreMap[index]!.value = !showMoreMap[index]!.value; // Toggle the value
  }

  RxBool showMoreTems = false.obs;
  void toggleMoreTems() {
    showMoreTems.value = !showMoreTems.value;
  }
=======
  //TODO: Implement HelpCenterPageController

  void toggleMore() {
    showMore.value = !showMore.value;
  } RxBool showMore = false.obs;
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
}
