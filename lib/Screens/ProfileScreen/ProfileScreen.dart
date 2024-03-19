import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:transportcordinate/Screens/LoginScreen/LoginScreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 15.h,
          ),
          Align(
            alignment: Alignment.center,
            child: ClipOval(
              child: Image.asset(
                "assets/profile.png",
                width: 12.h,
                height: 12.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10.h), // Add spacing
          SizedBox(
            width: 85.w,
            height: 6.h, // Specify width
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.w),),
                ),
              ),
            ),
          ),
          SizedBox(height: 2.h), // Add spacing
          SizedBox(
            width: 85.w, 
            height: 6.h,// Specify width
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  border: OutlineInputBorder( borderRadius: BorderRadius.circular(5.w),),
                ),
              ),
            ),
          ),
          SizedBox(height: 2.h), // Add spacing
          SizedBox(
            width: 85.w, 
            height:6.h,// Specify width
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.w)
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height:15.h), // Add spacing
            InkWell(
            onTap: () {
              Get.offAll(LoginScreen());
            },
            
            child:  Container(
                    width: 78.2.w,
                    height: 5.17.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xff036163),
                        borderRadius: BorderRadius.circular(10.h)),
                    child: //(authCtrl.loading)
                        //LoadingAnimationWidget.staggeredDotsWave(
                          //  color: Colors.white, size: 24)
                         Text("Logout",
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500),
                            ),),
                  ),
            ),
             
        ],
              ),
      
    );
  }
}
