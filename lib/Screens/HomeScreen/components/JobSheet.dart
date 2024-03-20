import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:transportcordinate/Screens/HomeScreen/components/Controller.dart';
import 'package:transportcordinate/Screens/PickupListScreen/MrfCard.dart';

class JobSheetCard extends StatelessWidget {
  int JobStatus;
  var jobData;
  JobSheetCard({super.key, required this.JobStatus, required this.jobData});
  homeController homeCtcrl = Get.put(homeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 91.w,
      height: 35.h,
      margin: EdgeInsets.symmetric(vertical: 2.5),
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
                jobData["id"].toString(),
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
                jobData["date"].toString(),
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
                jobData["material_type"].toString(),
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
                jobData["weight"].toString(),
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
              jobData["collection_point_data"]["name"].toString(),
              textAlign: TextAlign.start,
              style: GoogleFonts.lexend(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff000000)),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: ((context) => MrfCard(
                        jobID: jobData["id"],
                      )));
            },
            child: Container(
              width: 33.8.w,
              height: 4.h,
              alignment: Alignment.center,
              //  margin: EdgeInsets.only(left: 2.w),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(2, 97, 99, 1),
                  borderRadius: BorderRadius.circular(0.9.h)),
              child: Text(
                "Assign",
                style: GoogleFonts.lexend(
                    fontWeight: FontWeight.w500,
                    fontSize: 11.sp,
                    color: Colors.white),
              ),
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
