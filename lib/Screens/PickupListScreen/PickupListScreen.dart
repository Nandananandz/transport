import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:sizer/sizer.dart';
import 'package:transportcordinate/Screens/HomeScreen/components/Controller.dart';
import 'package:transportcordinate/Screens/PickupListScreen/MrfCard.dart';
import 'package:transportcordinate/Screens/PickupListScreen/component/PickupCard.dart';
import 'package:transportcordinate/main.dart';
//import 'package:transportcordinate/Screens/PickupListScreen/component/PickupCard.dart';

class PickupListScreen extends StatefulWidget {
  PickupListScreen({super.key});

  @override
  State<PickupListScreen> createState() => _PickupListScreenState();
}

class _PickupListScreenState extends State<PickupListScreen> {
  List driverList = [];
  homeController hctrl = Get.put(homeController());
  List jobList = [];
  loadJobsAssigned() async {
    final Response = await get(
      Uri.parse(baseUrl + "jobs/${hctrl.id}/list-jobs"),
      headers: {"Authorization": "Bearer ${hctrl.token}"},
    );
    print(Response.body);
    if (Response.statusCode == 200) {
      var jsonData = json.decode(Response.body);

      jobList = jsonData["data"];
      setState(() {});
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadJobsAssigned();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 3.h,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (var data in jobList)
                  if (data["TrackingStatus"] != "initated")
                    pickupCard(
                      jdata: data,
                    ),
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          ),
        ),
        //CircleAvatar(
          // radius: 6.w,
          // backgroundColor: Color(0xff036163),
           //child: SizedBox(
             //child: InkWell(
               //onTap: () {
                 //showDialog(
                   //  context: context,
                     //builder: (context) => Padding(
                       //    padding: MediaQuery.of(context).viewInsets,
                         // child: MrfCard(
                           //  jobID: 12,
                             ////type: type,
                           //),
                         //));
              // },
             //),
          // ),
         //),
      ],
    );
  }
}
