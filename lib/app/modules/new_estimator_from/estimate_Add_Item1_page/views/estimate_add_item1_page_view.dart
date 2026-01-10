// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
//
// import '../../../../data/utils/static_colors/static_colors.dart';
// import '../../../../data/utils/static_string/static_string.dart';
// import '../../../../data/utils/static_style/staticstyle.dart';
// import '../controllers/estimate_add_item1_page_controller.dart';
// import '../inner_widget/add_area_full_from/add_area_full_from.dart';
// import '../inner_widget/area_section/area_section.dart';
// import '../inner_widget/btn_sec/btn_sec.dart';
// import '../inner_widget/dropdown_button/dropdown_button.dart';
// import '../inner_widget/quantity_price_sec/quantity_price_sec.dart';
// import '../inner_widget/service_product_photo_add/service_product_photo_add.dart';
// import '../inner_widget/sub_service_op/sub_service_op.dart';
// import '../inner_widget/sub_service_pro/sub_service_pro.dart';
// import '../inner_widget/sub_service_product_photo_add/sub_service_product_photo_add.dart';
//
// class EstimateAddItem1PageView extends GetView<EstimateAddItem1PageController> {
//   const EstimateAddItem1PageView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               height: 200.h,
//               width: screenWidth,
//               decoration: BoxDecoration(
//                 color: Color(StaticColors.itemBgColor1),
//               ),
//               child: Stack(
//                 children: [
//                   Positioned(
//                     top: 95.h,
//                     left: 125.w,
//                     child: Text(
//                       StaticString.newEst,
//                       style: StaticStyle.style(
//                         24,
//                         StaticColors.whiteColor,
//                         FontWeight.w700,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//             AddAreaFullFrom(),
//             FittedBox(
//               child: BtnSec(
//                 controller: controller,
//               ).marginOnly(bottom: 20),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
