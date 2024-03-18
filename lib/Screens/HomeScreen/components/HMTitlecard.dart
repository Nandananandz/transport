import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:greenworms/Screen/homeScreen/controller.dart';
import 'package:sizer/sizer.dart';
 
 class HMTitle extends StatelessWidget {
   HMTitle({super.key});
  //  homeController homeCtrl = Get.put(homeController());
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start, 
      crossAxisAlignment: CrossAxisAlignment.center, 
      children: [
        ClipOval(
          child: Container(
            margin: EdgeInsets.only(left: 3.w),
            child: Image.asset(
              'assets/person.png',
              width: 12.w,
              height: 12.w,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 2.36.w),
      Text(
              'Hello ' ,
              style: GoogleFonts.lexend(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(255, 255, 255, 1),
                letterSpacing: 0,
                

              ),
            ),
            Text(
              "Sabari",
              style: GoogleFonts.lexend(
                fontSize: 18.33.sp,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(255, 255, 255, 1),
                letterSpacing: 0,
                
              ),
            ),
        Text(
          ',',
          style: GoogleFonts.ubuntu(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(255, 255, 255, 1),
            letterSpacing: 0,
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            width: 8.w,
            height: 8.w,
            child: Image.asset(
              'assets/bell.png',
              width: 20,
              height: 20,
            ),
          ),
        ),
        SizedBox(width: 3.w,)
      ],
    );
  }
}