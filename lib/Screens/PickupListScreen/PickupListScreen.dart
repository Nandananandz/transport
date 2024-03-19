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
        CircleAvatar(
          radius: 6.w,
          backgroundColor: Color(0xff036163),
          child: SizedBox(
            child: InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => MrfCard(
                        //type: type,
                        ));
              },
            ),
          ),
        ),
      ],
    );
  }
}
