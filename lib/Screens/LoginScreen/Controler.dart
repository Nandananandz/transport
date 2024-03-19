import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:transportcordinate/Dashboard.dart';
import 'package:transportcordinate/main.dart';



class LoginController extends GetxController {
  TextEditingController emailController =
      TextEditingController(text: "vrmm@logidots.com");
  TextEditingController passwordController =
      TextEditingController(text: "Vishnu123@");
  bool loading = false;

  loginSend() async {
    print(emailController.text);
    print(passwordController.text);
    loading = true;
    update();
    final Response = await post(Uri.parse(baseUrl + "auth/login"), headers: {
      'contentType': 'application/json',
    }, body: {
      "PhoneOrEmail": emailController.text.trim(),
      "password": passwordController.text.trim()
    });

    var data = json.decode(Response.body);
    print(Response.statusCode);
    print(Response.body);
    print("working here");
    if (Response.statusCode == 201 &&
        data["user"]["user_type"] == "project_associate") {
      //Obtain shared preferences.
      loading = false;
      update();
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', data["tokens"]["accessToken"]);
      prefs.setString('user', data['user']['name']);
      prefs.setInt('user_id', data['user']['id']);
      prefs.setString("LOGIN", "IN");
      Get.off(() => Dashboard());
    } else {
      Fluttertoast.showToast(
        msg: data["message"].toString().replaceAll(
            "login sucessfull", "Please login as a project associate"),
      );
      loading = false;
      update();
    }
  }
}
