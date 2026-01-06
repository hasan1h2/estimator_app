import 'package:get/get.dart';

class EstimateFullSummaryPageController extends GetxController {
  RxBool isShowDetails=false.obs;
  void togShowDet(){
    isShowDetails.value=!isShowDetails.value;
  }

  List<String> subTitle = [
    "Landscape Lighting Installation",
    "8059 lewis road 304 Berea, OH 44017",
    "Phone: 440-496-6744",
    "Email: sales@titanprolighting.com"
  ];
}
