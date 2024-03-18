import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sizer/sizer.dart';
import 'package:transportcordinate/Screens/HomeScreen/HomeScreen.dart';
import 'package:transportcordinate/Screens/PickupListScreen/PickupListScreen.dart';
import 'package:transportcordinate/Screens/ProfileScreen/ProfileScreen.dart';
//import 'package:transportcordinator/Screens/EventScreen/EventListScreen.dart';
//import 'package:transportcordinator/Screens/HomeScreen/HomeScreen.dart';
//import 'package:transportcordinator/Screens/InputWardScreen/InputwardListScreen.dart';
//import 'package:transportcordinator/Screens/PickupRequest/PickupListScreen.dart';
//import 'package:transportcordinator/Screens/ProfileScreen/ProfileScreen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int indexNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    
      body: _getBody(indexNum),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/Home.png",
              color: (indexNum != 0) ? Color(0xff5E5F60) : Color(0xff036163),
              height: 4.h,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/pickup.png",
              height: 4.h,
              color: (indexNum != 1) ? Color(0xff5E5F60) : Color(0xff036163),
            ),
            label: "Pickup",
          ),
          
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/bottompro.png",
              color: (indexNum != 4) ? Color(0xff5E5F60) : Color(0xff036163),
              height: 4.h,
            ),
            label: "Profile",
          ),
        ],
        iconSize: 5.w,
        selectedFontSize: 11.sp,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: indexNum,
        unselectedFontSize: 11.sp,
        selectedItemColor: Color(0xff036163),
        unselectedItemColor: Color(0xff5E5F60),
        selectedLabelStyle: GoogleFonts.lexend(fontWeight: FontWeight.w400, fontSize: 10.sp),
        unselectedLabelStyle: GoogleFonts.lexend(fontWeight: FontWeight.w400, fontSize: 10.sp),
        onTap: (int index) {
          setState(() {
            indexNum = index;
          });
        },
      ),
    );
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return HomeScreen();
      case 1:
        return PickupListScreen();
      case 2:
        return ProfileScreen();
      default:
        return Container();
    }
  }
}
