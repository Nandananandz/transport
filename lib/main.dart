import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:transportcordinate/Dashboard.dart';
import 'package:transportcordinate/Screens/LoginScreen/LoginScreen.dart';

String baseUrl = (false)
    ? "http://192.168.1.8:3000/api/"
    : "https://api.greenworms.alpha.logidots.com/api/";
String login = "";
void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  login = preferences.getString("LOGIN") ?? "";

  runApp(transportcordinate());
}

class transportcordinate extends StatelessWidget {
  const transportcordinate({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, Orientation, DeviceType) {
      return GetMaterialApp(
        home: (login == "IN") ? Dashboard() : LoginScreen(),
      );
    });
  }
}
