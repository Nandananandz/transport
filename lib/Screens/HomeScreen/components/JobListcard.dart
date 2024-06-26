import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:transportcordinate/Screens/HomeScreen/components/Controller.dart';
import 'package:transportcordinate/Screens/HomeScreen/components/JobSheet.dart';

class JobListCard extends StatelessWidget {
  JobListCard({super.key});
  homeController homeCtcrl = Get.put(homeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<homeController>(builder: (_) {
      return SmartRefresher(
        controller: homeCtcrl.prefresh,
        onRefresh: () {
          homeCtcrl.getjoblist();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (var data in homeCtcrl.joblist)
                //  if (data["TrackingStatus"] == "initiated")
                JobSheetCard(
                  jobData: data,
                  JobStatus: 0,
                ),
            ],
          ),
        ),
      );
    });
  }
}
