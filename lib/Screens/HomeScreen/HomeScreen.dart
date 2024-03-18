import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:transportcordinate/Screens/HomeScreen/components/HMTitlecard.dart';
import 'package:transportcordinate/Screens/HomeScreen/components/JobListcard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
    
        Scaffold(
          body: Stack(
                children: [
                  
                   Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                      child:Container(
                        width: 100.w,
                        height: 25.76.h,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(2, 97, 99, 1),
                        ),
                      ),
                    ),

               Positioned(left: 2.7.w, right: 2.7.w, top: 8.6.h, child: HMTitle()),
            
                    Positioned(
                        left: 4.7.w,
                        right: 4.7.w,
                        top: 28.5.h,
                        bottom: 5,
                        child: JobListCard()),
             
               
                ],
              ),
              
        );

     
  }
}