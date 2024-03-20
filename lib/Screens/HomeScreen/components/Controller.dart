import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:transportcordinate/main.dart';

class homeController extends GetxController {
  int jstatus = 0;
  String name = "";
  bool islogin = false;
  TextEditingController reasonController = TextEditingController();

  get pref => null;

  getdata() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    name = pref.getString("user").toString();
    update();
    id = pref.getInt("user_id") ?? 0;
    token = pref.getString('token').toString();
    getjoblist();
    loadMrf();
    loadDirverList();
  }

  int id = 0;
  String token = "";
  List joblist = [];
  List MrfList = [];
  List driverList = [];
  var selectedDriver;
  var selectedmrf;
  bool assignloading = false;

  loadMrf() async {
    //final String token = pref.getString('token') ?? "";
    final Response = await get(
      Uri.parse(baseUrl + "mrf-facilities"),
      headers: {"Authorization": "Bearer $token"},
    );

    if (Response.statusCode == 200) {
      MrfList = json.decode(Response.body)["data"];
    }
    print("Load plants ");
    print(Response.body);
    print(Response.statusCode);
  }

  loadDirverList() async {
    final Response = await get(
      Uri.parse(baseUrl + "users?uesr_type=drivers"),
      headers: {
        'contentType': 'application/json',
        "Authorization": "Bearer $token"
      },
    );
    print(token);
    print("loadDriverList");
    print(Response.body);
    if (Response.statusCode == 200) {
      var jsonData = json.decode(Response.body);
      driverList = jsonData["data"];
      update();
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getdata();
  }

  void getjoblist() async {
    print(baseUrl + "jobs/$id/list-jobs?status=intiated");
    print(token);
    print(
      Uri.parse(baseUrl + "jobs/$id/list-jobs"),
    );
    final Response = await get(
      Uri.parse(baseUrl + "jobs/$id/list-jobs"),
      headers: {"Authorization": "Bearer $token"},
    );
    print(Response.body);
    if (Response.statusCode == 200) {
      var jsonData = json.decode(Response.body);

      joblist = jsonData["data"];
      // for (var data in jsonData["data"]) {

      //   if ()
      // }
      update();
    }
    print(joblist);
  }
}
