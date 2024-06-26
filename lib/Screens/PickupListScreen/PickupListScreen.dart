import 'dart:async';
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
      Uri.parse(baseUrl + "jobs/${hctrl.id}/list-jobs?status=initiated"),
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
<<<<<<< HEAD
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
                  //if (data["TrackingStatus"] != "initated")

                  pickupCard(
                    jdata: data,
                  ),
                SizedBox(
                  height: 3.h,
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
=======
    return 
    
  // RefreshIndicator(
     // onRefresh:() {
          //  Completer<void> completer = Completer<void>();
            //_refreshData().then((_) {
            //  completer.complete();
           // });
           // return completer.future;
       ///   },
       Column(
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
                    //if (data["TrackingStatus"] != "initated")
      
                      pickupCard(
                        jdata: data,
                      ),
                  SizedBox(
                    height: 3.h,
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
  
>>>>>>> 39ccc3006109898f7a646c69c87672baf3b6513f
  }
}