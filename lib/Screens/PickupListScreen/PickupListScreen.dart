import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:transportcordinate/Screens/PickupListScreen/MrfCard.dart';
import 'package:transportcordinate/Screens/PickupListScreen/component/PickupCard.dart';
//import 'package:transportcordinate/Screens/PickupListScreen/component/PickupCard.dart';

class PickupListScreen extends StatelessWidget {
  const PickupListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 3.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.w, top: 3.h),
          child: Column(
            children: [
              pickupCard(),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
        
      ],
    );
  }
}
