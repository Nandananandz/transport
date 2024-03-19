import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:transportcordinate/Screens/LoginScreen/LoginScreen.dart';
import 'package:transportcordinate/Screens/ProfileScreen/ProfileController.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileController profileCtrl = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ProfileController>(builder: (_) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15.h,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 30.w,
                height: 30.w,
                child: ClipOval(
                  child: (profileCtrl.ProfileImage == null)
                      ? Image.asset(
                          'assets/profile.png',
                          width: 12.h,
                          height: 12.h,
                          fit: BoxFit.cover,
                        )
                      : Image.network(profileCtrl.ProfileImage!),
                ),
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black.withOpacity(0.09),
                ),
                borderRadius: BorderRadius.circular(9),
              ),
              padding: EdgeInsets.fromLTRB(8.w, 4.w, 8.w, 4.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Name",
                        style: GoogleFonts.lexend(
                            fontSize: 11.sp,
                            color: Color(0xff036163),
                            fontWeight: FontWeight.w500),
                      ),
                      Expanded(child: Container()),
                      Text(
                        profileCtrl.name,
                        style: GoogleFonts.lexend(
                            fontSize: 12.sp,
                            color: Color(0xff053532),
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 3.w,
                  ),
                  Container(
                    width: 100.w,
                    height: 0.01.h,
                    color: Colors.black.withOpacity(0.2.w),
                  ),
                  SizedBox(
                    height: 3.w,
                  ),
                  Row(
                    children: [
                      Text(
                        "Mobile Number",
                        style: GoogleFonts.lexend(
                            fontSize: 11.sp,
                            color: Color(0xff036163),
                            fontWeight: FontWeight.w400),
                      ),
                      Expanded(child: Container()),
                      Text(
                        profileCtrl.Phoneno,
                        style: GoogleFonts.lexend(
                            fontSize: 12.sp,
                            color: Color(0xff053532),
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 3.w,
                  ),
                  Container(
                    width: 100.w,
                    height: 0.01.h,
                    color: Colors.black.withOpacity(0.2.w),
                  ),
                  SizedBox(
                    height: 3.w,
                  ),
                  Row(
                    children: [
                      Text(
                        "Email ID",
                        style: GoogleFonts.lexend(
                            fontSize: 11.sp,
                            color: Color(0xff036163),
                            fontWeight: FontWeight.w400),
                      ),
                      Expanded(child: Container()),
                      Text(
                        profileCtrl.mailid,
                        style: GoogleFonts.lexend(
                            fontSize: 12.sp,
                            color: Color(0xff053532),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.w),
            InkWell(
              onTap: () async {
                SharedPreferences pref = await SharedPreferences.getInstance();
                pref.setString("LOGIN", "OUT");
                Get.offAll(() => LoginScreen());
              },
              child: Container(
                child: Container(
                    width: 33.9.w,
                    height: 4.15.h,
                    alignment: Alignment.center,
                    child: Text("Logout",
                        style: GoogleFonts.lexend(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                    decoration: BoxDecoration(
                        color: Color(0xff036163),
                        borderRadius: BorderRadius.circular(0.9.h))),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        );
      }),
    );
  }
}
