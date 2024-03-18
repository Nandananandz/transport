import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:transportcordinate/Screens/LoginScreen/LoginScreen.dart';

void main() async {
  runApp(transportcordinate());
}
class transportcordinate extends StatelessWidget{
  const transportcordinate({super.key});
  @override
  Widget build(BuildContext context){
             return Sizer(builder: (context, Orientation, DeviceType)
             
             {
              return GetMaterialApp(
                home:LoginScreen() ,
              );
             });
  }
}