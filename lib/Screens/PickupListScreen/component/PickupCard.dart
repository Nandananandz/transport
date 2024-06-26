import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:transportcordinate/Screens/HomeScreen/HomeScreen.dart';
import 'package:transportcordinate/Screens/HomeScreen/components/Controller.dart';

class pickupCard extends StatelessWidget {
  var jdata;
  pickupCard({super.key, required this.jdata});
  homeController ctrl = Get.put(homeController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      margin: EdgeInsets.symmetric(vertical: 2.5, horizontal: 4.2.w),
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xff007C58).withOpacity(0.03.w),
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(0.9.h)),
      child: Padding(
        padding: EdgeInsets.fromLTRB(4.17.w, 2.h, 0.w, 0.h),
        child: Column(children: [
          Row(
            children: [
              SizedBox(
                  width: 1.7.h,
                  height: 1.7.h,
                  child: Image.asset("assets/jobid.png")),
              SizedBox(
                width: 2.w,
              ),
              SizedBox(
                width: 39.4.w,
                child: Text(
                  "Job Id",
                  style: GoogleFonts.lexend(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6A6A6A)),
                ),
              ),
              Text(
                "#" + jdata["id"].toString(),
                style: GoogleFonts.lexend(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000)),
              ),
              Expanded(child: Container()),
            ],
          ),
          SizedBox(
            height: 2.w,
          ),
          Container(
            width: 80.w,
            height: 0.01.h,
            color: Colors.black.withOpacity(0.2.w),
          ),
          SizedBox(
            height: 2.w,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: 1.7.h,
                  height: 1.7.h,
                  child: Image.asset("assets/jobid.png")),
              SizedBox(
                width: 2.w,
              ),
              SizedBox(
                width: 39.4.w,
                child: Text(
                  "Pickup Date ",
                  style: GoogleFonts.lexend(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6A6A6A)),
                ),
              ),
              Text(
                jdata["date"].toString(),
                textAlign: TextAlign.end,
                style: GoogleFonts.lexend(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000)),
              ),
              Expanded(child: Container()),
            ],
          ),
          SizedBox(
            height: 2.w,
          ),
          Container(
            width: 80.w,
            height: 0.01.h,
            color: Colors.black.withOpacity(0.2.w),
          ),
          SizedBox(
            height: 2.w,
          ),
          Row(
            children: [
              SizedBox(
                  width: 1.7.h,
                  height: 1.7.h,
                  child: Image.asset("assets/pickitem.png")),
              SizedBox(
                width: 2.w,
              ),
              SizedBox(
                width: 39.4.w,
                child: Text(
                  "Pickup Item",
                  style: GoogleFonts.lexend(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6A6A6A)),
                ),
              ),
              Text(
                jdata["material_type"].toString(),
                style: GoogleFonts.lexend(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000)),
              ),
              Expanded(child: Container()),
            ],
          ),
          SizedBox(
            height: 2.w,
          ),
          Container(
            width: 80.w,
            height: 0.01.h,
            color: Colors.black.withOpacity(0.2.w),
          ),
          SizedBox(
            height: 2.w,
          ),
          Row(
            children: [
              SizedBox(
                  width: 1.7.h,
                  height: 1.7.h,
                  child: Image.asset("assets/quantity.png")),
              SizedBox(
                width: 2.w,
              ),
              SizedBox(
                width: 39.4.w,
                child: Text(
                  "Approx Qty",
                  style: GoogleFonts.lexend(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6A6A6A)),
                ),
              ),
              Text(
                jdata["weight"].toString(),
                style: GoogleFonts.lexend(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000)),
              ),
              Expanded(child: Container()),
            ],
          ),
          SizedBox(
            height: 2.w,
          ),
          Container(
            width: 80.w,
            height: 0.01.h,
            color: Colors.black.withOpacity(0.2.w),
          ),
          SizedBox(
            height: 2.w,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: 1.7.h,
                  height: 1.7.h,
                  child: Image.asset("assets/mrf.png")),
              SizedBox(
                width: 2.w,
              ),
              SizedBox(
                width: 39.4.w,
                child: Text(
                  "MRF ",
                  style: GoogleFonts.lexend(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6A6A6A)),
                ),
              ),
              Text(
                ctrl.FacilitName(jdata["mrf_facility_id"]),
                textAlign: TextAlign.end,
                style: GoogleFonts.lexend(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000)),
              ),
              Expanded(child: Container()),
            ],
          ),
          SizedBox(
            height: 2.w,
          ),
          Container(
            width: 80.w,
            height: 0.01.h,
            color: Colors.black.withOpacity(0.2.w),
          ),
          SizedBox(
            height: 2.w,
          ),
          if (jdata["status"] != null)
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    width: 1.7.h,
                    height: 1.7.h,
                    child: Image.asset("assets/jobid.png")),
                SizedBox(
                  width: 2.w,
                ),
                SizedBox(
                  width: 39.4.w,
                  child: Text(
                    "Status ",
                    style: GoogleFonts.lexend(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff6A6A6A)),
                  ),
                ),
                Text(
                  jdata["status"]["name"].toString(),
                  textAlign: TextAlign.end,
                  style: GoogleFonts.lexend(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
                Expanded(child: Container()),
              ],
            ),
          SizedBox(
            height: 2.w,
          ),
          Container(
            width: 80.w,
            height: 0.01.h,
            color: Colors.black.withOpacity(0.2.w),
          ),
          SizedBox(
            height: 2.w,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: 1.7.h,
                  height: 1.7.h,
                  child: Image.asset("assets/driver.png")),
              SizedBox(
                width: 2.w,
              ),
              SizedBox(
                width: 39.4.w,
                child: Text(
                  "Driver ",
                  style: GoogleFonts.lexend(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6A6A6A)),
                ),
              ),
              Text(
                (jdata["driver_data"] == null)
                    ? "--:--"
                    : jdata["driver_data"]["name"],
                textAlign: TextAlign.end,
                style: GoogleFonts.lexend(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000)),
              ),
              Expanded(child: Container()),
            ],
          ),
          SizedBox(
            height: 2.w,
          ),
          Container(
            width: 80.w,
            height: 0.01.h,
            color: Colors.black.withOpacity(0.2.w),
          ),
          SizedBox(
            height: 2.w,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: 1.7.h,
                  height: 1.7.h,
                  child: Image.asset("assets/vechicle.png")),
              SizedBox(
                width: 2.w,
              ),
              SizedBox(
                width: 39.4.w,
                child: Text(
                  "Vechicle No ",
                  style: GoogleFonts.lexend(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6A6A6A)),
                ),
              ),
              Text(
                jdata["vehicle_no"].toString().replaceAll("null", "--:--:--"),
                textAlign: TextAlign.end,
                style: GoogleFonts.lexend(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000)),
              ),
              Expanded(child: Container()),
            ],
          ),
          SizedBox(
            height: 2.w,
          ),
          Container(
            width: 80.w,
            height: 0.01.h,
            color: Colors.black.withOpacity(0.2.w),
          ),
          SizedBox(
            height: 2.w,
          ),
          Row(
            children: [
              SizedBox(
                  width: 1.7.h,
                  height: 1.7.h,
                  child: Image.asset("assets/loc.png")),
              SizedBox(
                width: 3.w,
              ),
              SizedBox(
                width: 39.4.w,
                child: Text(
                  "location",
                  style: GoogleFonts.lexend(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6A6A6A)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              jdata["collection_point_data"]["name"].toString(),
              //  jdata["collection_point_data"]["name"].toString(),
              textAlign: TextAlign.start,
              style: GoogleFonts.lexend(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff000000)),
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
        ]),
      ),
    );
  }
}
