import 'package:get/get.dart';

import '../../../../data/utils/static_img/static_img.dart';

class FindCustomermPageController extends GetxController {
RxString selectIndex="".obs;

void chanceIndex(int index){
  selectIndex.value=index.toString();
}


  final List<Map<String, dynamic>> customerDet = [
    {
      'title': 'Jay Walser',

    },  {
      'title': '+880-183839292',
      'icon': StaticImg.call,

    },  {
      'title': 'jaywalser@gmail.com',
      'icon': StaticImg.email,

    },  {
      'title': 'Texas,USA.r',
      'icon': StaticImg.map,

    },

  ];  final List<Map<String, dynamic>> btnTitle = [
    {
      'title': 'Select',

    },  {
      'title': 'Estimates',
      'icon': StaticImg.estimate,

    },  {
      'title': 'Edit',
      'icon': StaticImg.edit,

    },  {
      'title': 'Delete',
      'icon': StaticImg.delete,

    },

  ];


}
