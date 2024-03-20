import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:transportcordinate/Screens/HomeScreen/HomeScreen.dart';
import 'package:transportcordinate/Screens/HomeScreen/components/Controller.dart';
import 'package:transportcordinate/main.dart';

class MrfCard extends StatelessWidget {
  int jobID;
  MrfCard({super.key, required this.jobID});
  homeController hctrl = Get.put(homeController());
  TextEditingController vehicleNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    hctrl.selectedDriver = null;
    hctrl.selectedmrf = null;
    return GetBuilder<homeController>(builder: (_) {
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
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(Icons.arrow_back_ios_new_rounded)),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Select MRF",
                          style: GoogleFonts.lexend(
                              fontSize: 11.66.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 2.2.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.9.h),
                          border: Border.all(
                              color: Color(0xffD0D5DD), width: 0.15.h)),
                      width: 75.5.w,
                      height: 5.17.h,
                      child: DropdownButton(
                        hint: Text("Select MRF Facility"),
                        underline: Container(),
                        value: hctrl.selectedmrf,
                        isExpanded: true,
                        items: hctrl.MrfList.map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(
                              e["name"],
                            ))).toList(),
                        onChanged: (value) {
                          hctrl.selectedmrf = value;
                          hctrl.update();
                        },
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
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 2.2.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.9.h),
                          border: Border.all(
                              color: Color(0xffD0D5DD), width: 0.15.h)),
                      width: 75.5.w,
                      height: 5.17.h,
                      child: DropdownButton(
                        hint: Text("Select Driver"),
                        value: hctrl.selectedDriver,
                        isExpanded: true,
                        underline: Container(),
                        items: hctrl.driverList
                            .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(
                                  e["name"],
                                )))
                            .toList(),
                        onChanged: (value) {
                          hctrl.selectedDriver = value;
                          hctrl.update();
                        },
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
                        keyboardType: TextInputType.name,
                        controller: vehicleNumber,
                        //controller:,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          isDense: true,

                          hintText: ("Vehicle Number"),
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
                  SizedBox(height: 3.h),
                  InkWell(
                    onTap: () async {
                      hctrl.assignloading = true;
                      hctrl.update();
                      final Response = await post(
                        Uri.parse(baseUrl + "jobs/$jobID}/initiate"),
                        body: json.encode({
                          "driver_id": hctrl.selectedDriver["id"],
                          "mrf_facility_id": hctrl.selectedmrf["id"],
                          "vehicle_no": vehicleNumber.text
                        }),
                        headers: {
                          "Authorization": "Bearer ${hctrl.token}",
                          "Content-Type": "application/json"
                        },
                      );
                      print(Response.body);
                      print(Response.statusCode);
                      hctrl.assignloading = false;
                      hctrl.update();
                      if (Response.statusCode == 200 ||
                          Response.statusCode == 201) {
                        Navigator.of(context).pop();
                        Fluttertoast.showToast(
                            msg: "Assign Successfully Completed");
                      } else {
                        Fluttertoast.showToast(
                            msg:
                                "Opertation Failed ${json.decode(Response.body)["message"].toString()}");
                      }
                    },
                    child: Container(
                      width: 32.2.w,
                      height: 3.5.h,
                      margin: EdgeInsets.only(left: 25.w, top: 15),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xff036163),
                          borderRadius: BorderRadius.circular(0.5.h)),
                      child: (hctrl.assignloading)
                          ? LoadingAnimationWidget.staggeredDotsWave(
                              color: Colors.white, size: 24)
                          : Text("Assign",
                              style: GoogleFonts.lexend(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500),
                              )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
