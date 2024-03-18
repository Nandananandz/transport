import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MrfCard extends StatelessWidget {
  const MrfCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material( 
      color: Colors.transparent,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: 85.26.w,
          height: 48.h,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 2.8.h,
                  width: 3.15.w,
                ),   
                Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: Text(
                    "Select MRF",
                    style: GoogleFonts.lexend(
                        fontSize: 11.66.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                        SizedBox(
                  height: 1.5.h,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: 75.5.w,
                    height: 5.17.h,
                   // child: InkWell(
                     // onTap: ()
                      child: TextFormField(
                        //controller: date,
                        keyboardType: TextInputType.datetime,
                        textAlignVertical: TextAlignVertical.center,
                        enabled: true,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: ("Select MRF"),
                          //contentPadding: EdgeInsets.only(left:3.68.w,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0.9.h),
                            borderSide: BorderSide(
                                color: Color(0xffD0D5DD), width: 0.15.h),
                          ),
                          
                        ),
                      ),
                    ),
                  ),
                
                SizedBox(
                  height: 1.8.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: Text(
                    "Select Driver",
                    style: GoogleFonts.lexend(
                        fontSize: 11.66.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: 75.5.w,
                    height: 5.17.h,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                    //  controller: ,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        isDense: true,

                        hintText: ("Select Driver"),
                        //contentPadding: EdgeInsets.only(left:3.68.w,),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.9.h),
                          borderSide: BorderSide(
                              color: Color(0xffD0D5DD), width: 0.15.h),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),

                                    Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: Text(
                    "Vehicle Number",
                    style: GoogleFonts.lexend(
                        fontSize: 11.66.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: 75.5.w,
                    height: 5.17.h,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                     //controller:,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        isDense: true,

                        hintText: ("No"),
                        //contentPadding: EdgeInsets.only(left:3.68.w,),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.9.h),
                          borderSide: BorderSide(
                              color: Color(0xffD0D5DD), width: 0.15.h),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height:3.h),
                
                 Container(
                  width: 32.2.w,
                  height: 3.5.h,
                  margin: EdgeInsets.only(left: 25.w,top:15),
                  
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xff036163),
                      borderRadius: BorderRadius.circular(0.5.h)),
                  child: //(authCtrl.loading)
                      //LoadingAnimationWidget.staggeredDotsWave(
                        //  color: Colors.white, size: 24)
                       Text("Assign",
                          style: GoogleFonts.lexend(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500),
                          )),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}