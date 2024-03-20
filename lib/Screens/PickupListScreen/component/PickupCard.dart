import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class pickupCard extends StatelessWidget {
  var jdata;
  pickupCard({super.key, required this.jdata});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 91.w,
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
                "04-03-2023",
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
                "MIXED WASTE",
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
                "1000 KG",
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
                "JOB",
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
                "NAME",
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
                "NUMBER",
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
              "Logidots Technologies,Atomic building ,kazhakootam",
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
