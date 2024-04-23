import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:transportcordinate/Dashboard.dart';
import 'package:transportcordinate/Screens/LoginScreen/Controler.dart';
import 'package:transportcordinate/main.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController(text: "");

  TextEditingController passwordController = TextEditingController(text: "");
  bool islogin = false;

  // controller call
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 33.6.h,
                alignment: Alignment.bottomCenter,
                child: Image.asset("assets/logo.png"),
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Phone Number",
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                  color: Color(0xff344054),
                                  fontSize: 11.6.sp,
                                  fontWeight: FontWeight.w500),
                            )),
                        SizedBox(
                          height: 0.9.h,
                        ),
                        SizedBox(
                          width: 84.2.w,
                          height: 5.17.h,
                          child: TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: ("Phone"),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0.9.h),
                                borderSide: BorderSide(
                                    color: Color(0xffD0D5DD), width: 0.15.h),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4.w,
                        ),
                        Text("Password",
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                  color: Color(0xff344054), fontSize: 11.6.sp),
                            )),
                        SizedBox(
                          height: 0.9.h,
                        ),
                        SizedBox(
                          width: 84.2.w,
                          height: 5.17.h,
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              hintText: ("***********"),
                              isDense: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0.9.h),
                                borderSide: BorderSide(
                                    color: Color(0xffD0D5DD), width: 0.15.h),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 7.w,
                        ),
                      ],
                    )),
              ),
              Center(
                child: InkWell(
                  onTap: () async {
                    if (emailController.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Please enter mail id");
                      return;
                    } else if (passwordController.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Please enter your password");
                      return;
                    } else {
                      islogin = true;
                      setState(() {});
                      final Response = await post(
                          Uri.parse(baseUrl + "auth/login"),
                          headers: {
                            'contentType': 'application/json',
                          },
                          body: {
                            "PhoneOrEmail": emailController.text.trim(),
                            "password": passwordController.text.trim()
                          });
                      print(Response.body);
                      var data = json.decode(Response.body);
                      if (Response.statusCode == 201 &&
                          data["user"]["user_type"] == "transport_cordinator") {
                        //Obtain shared preferences.
                        islogin = false;
                        setState(() {});
                        ();
                        final SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.setString('token', data["tokens"]["accessToken"]);
                        prefs.setString('user', data['user']['name']);
                        prefs.setInt('user_id', data['user']['id']);
                        prefs.setString("LOGIN", "IN");
                        Get.off(() => Dashboard());
                      } else {
                        Fluttertoast.showToast(
                          msg: data["message"].toString().replaceAll(
                              "login sucessfull",
                              "Please login as a project associate"),
                        );
                        islogin = false;
                        setState(() {});
                        ();
                      }
                    }
                  },
                  child: Container(
                    width: 84.2.w,
                    height: 5.17.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xff036163),
                        borderRadius: BorderRadius.circular(0.9.h)),
                    child: islogin
                        ? LoadingAnimationWidget.staggeredDotsWave(
                            color: Colors.white, size: 24)
                        : Text("Login",
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500),
                            )),
                  ),
                ),
              ),
              SizedBox(height: 14.h),
              SizedBox(
                height: 2.8.h,
                width: 35.5.w,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("App Version v1",
                      style: GoogleFonts.lexend(
                        textStyle: TextStyle(
                            color: Color(0xff007C58),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400),
                      )),
                ),
              ),
              SizedBox(height: 0.4.h)
            ],
          ),
        ),
      ),
    );
  }
}
