 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
class DetailsShow extends StatelessWidget {
   const DetailsShow({super.key});
   @override
   Widget build(BuildContext context) {
     return   Column(
       crossAxisAlignment: .start,
       children: [
         Text(
           "AAA AAA AAAAA",
           style: StaticStyle.style(
             15.6.sp,
             StaticColors.textPrColor,
             FontWeight.w600,
           ),
         ),
         Text(
           "Dhaka 1216",
           style: StaticStyle.style(
             14.6.sp,
             StaticColors.textPrColor,
             FontWeight.w400,
           ),
         ).marginSymmetric(vertical: 10),
         Row(
           children: [
             SvgPicture.asset(StaticImg.call, height: 13, width: 13),
             SizedBox(width: 7.w),
             Text(
               "453-432-4636",
               style: StaticStyle.style(
                 14.6.sp,
                 StaticColors.textPrColor,
                 FontWeight.w400,
               ),
             ),
           ],
         ),
         SizedBox(height: 40.h),
         Text(
           "Services",
           style: StaticStyle.style(
             17.6.sp,
             StaticColors.textPrColor,
             FontWeight.w600,
           ),
         ),
         FittedBox(
           child: Container(
             margin: EdgeInsets.symmetric(vertical: 20),
             padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
             width: MediaQuery.of(context).size.width,
             height: 130.h,
             decoration: BoxDecoration(
               color: Color(StaticColors.whiteColor),
               borderRadius: BorderRadius.circular(10),
             ),
             child: Row(
               crossAxisAlignment: .start,
               children: [
                 SvgPicture.asset(StaticImg.light,height: 60,width: 60,),
                 SizedBox(width: 15.w),
                 Column(
                   children: [
                     Text(
                       "Expander Path Lighting",
                       style: StaticStyle.style(
                         17.6.sp,
                         StaticColors.textPrColor,
                         FontWeight.w600,
                       ),
                     ),
                     Text(
                       "Lights on the path...ish",
                       style: StaticStyle.style(
                         14.6.sp,
                         StaticColors.textSeColor,
                         FontWeight.w400,
                       ),
                     ).marginSymmetric(vertical: 7),
                     Text(
                       "× 15ft loop lead (Qty: 1)",
                       style: StaticStyle.style(
                         14.6.sp,
                         StaticColors.textSeColor,
                         FontWeight.w400,
                       ),
                     ),
                   ],
                 ),
               ],
             ),
           ),
         ),
         FittedBox(
           child: Text(
             "Price Summary",
             style: StaticStyle.style(
               17.6.sp,
               StaticColors.textPrColor,
               FontWeight.w600,
             ),
           ),
         ),

         Row(
           mainAxisAlignment: .spaceBetween,
           children: [
             Text(
               "Estimate Total",
               style: StaticStyle.style(
                 14.6.sp,
                 StaticColors.textPrColor,
                 FontWeight.w400,
               ),
             ),
             Text(
               "\$410.00",
               style: StaticStyle.style(
                 15.6.sp,
                 StaticColors.textPrColor,
                 FontWeight.w600,
               ),
             ),
           ],
         ).marginSymmetric(vertical: 15),
         Row(
           mainAxisAlignment: .spaceBetween,
           children: [
             Text(
               "Discount",
               style: StaticStyle.style(
                 14.6.sp,
                 StaticColors.textPrColor,
                 FontWeight.w400,
               ),
             ),
             Text(
               "\$32.80",
               style: StaticStyle.style(
                 15.6.sp,
                 StaticColors.btnColor,
                 FontWeight.w600,
               ),
             ),
           ],
         ),
         Row(
           mainAxisAlignment: .spaceBetween,
           children: [
             Text(
               "Balance Due",
               style: StaticStyle.style(
                 14.6.sp,
                 StaticColors.textPrColor,
                 FontWeight.w600,
               ),
             ),
             Text(
               "\$377.20",
               style: StaticStyle.style(
                 15.6.sp,
                 StaticColors.redColor,
                 FontWeight.w600,
               ),
             ),
           ],
         ).marginOnly(top: 27, bottom: 25, right: 20),

         FittedBox(
           child: Container(
             padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
             height: 220.h,
             width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: Color(StaticColors.downPayTemBgC),
               border: Border.all(
                 color: Color(StaticColors.downPayTemBro),
                 width: 1,
               ),
             ),
             child: Column(
               crossAxisAlignment: .start,
               children: [
                 Text(
                   "Payment Terms",
                   style: StaticStyle.style(
                     17.6.sp,
                     StaticColors.downPayTemText,
                     FontWeight.w600,
                   ),
                 ),
                 SizedBox(height: 15.h),

                 Row(
                   mainAxisAlignment: .spaceBetween,
                   children: [
                     Text(
                       "Down Payment (20%)",
                       style: StaticStyle.style(
                         14.6.sp,
                         StaticColors.downPayTemText,
                         FontWeight.w400,
                       ),
                     ),
                     Text(
                       "\$75.44",
                       style: StaticStyle.style(
                         15.6.sp,
                         StaticColors.downPayTemText,
                         FontWeight.w600,
                       ),
                     ),
                   ],
                 ),
                 Row(
                   mainAxisAlignment: .spaceBetween,
                   children: [
                     Text(
                       "Payment Received",
                       style: StaticStyle.style(
                         14.6.sp,
                         StaticColors.downPayTemText,
                         FontWeight.w400,
                       ),
                     ),
                     Text(
                       "\$75.44",
                       style: StaticStyle.style(
                         15.6.sp,
                         StaticColors.downPayTemText,
                         FontWeight.w600,
                       ),
                     ),
                   ],
                 ).marginOnly(top: 12, bottom: 20),

                 Row(
                   mainAxisAlignment: .spaceBetween,
                   children: [
                     Text(
                       "Remaining Balance",
                       style: StaticStyle.style(
                         14.9.sp,
                         StaticColors.downPayTemText,
                         FontWeight.w600,
                       ),
                     ),
                     Text(
                       "\$301.76",
                       style: StaticStyle.style(
                         15.6.sp,
                         StaticColors.downPayTemText,
                         FontWeight.w700,
                       ),
                     ),
                   ],
                 ),
               ],
             ),
           ),
         ),
         FittedBox(
           child: Container(
             padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
             margin: EdgeInsets.symmetric(vertical: 20),
             height: 110.h,
             width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
               color: Color(StaticColors.downPayMsgBg),
               borderRadius: BorderRadius.circular(5),
               border: Border(
                 left: BorderSide(
                   color: Color(StaticColors.downPayMsgBro),
                   width: 4,
                 ),
               ),
             ),
             child: Text(
               "This is an estimate only; actual pricing may change based on\nchanges to the scope of work requested.",
               style: StaticStyle.style(
                 14.2.sp,
                 StaticColors.downPayMsgBro,
                 FontWeight.w400,
               ),
             ),
           ),
         ),
       ],
     );
   }
 }
