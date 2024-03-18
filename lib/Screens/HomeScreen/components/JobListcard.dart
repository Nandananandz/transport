import 'package:flutter/material.dart';
import 'package:transportcordinate/Screens/HomeScreen/components/JobSheet.dart';

class JobListCard extends StatelessWidget {
  const JobListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: [
                JobSheetCard(),
            ],
          ),
        ))
      ],
    );
  }
}