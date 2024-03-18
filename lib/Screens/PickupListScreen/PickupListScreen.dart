import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:transportcordinate/Screens/PickupListScreen/MrfCard.dart';

class PickupListScreen extends StatelessWidget {
  const PickupListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
floatingActionButton: CircleAvatar(
          radius: 6.w,
          backgroundColor: Color(0xff036163),
          child: SizedBox(
            child: InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => MrfCard
                    (
                          //type: type,
                        ));
              },
            ),
          ),


    
      
      ),
    );
    
  }
}