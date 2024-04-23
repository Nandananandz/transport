import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:transportcordinate/main.dart';

class homeController extends GetxController {
  int jstatus = 0;
  String name = "";
  bool islogin = false;
  TextEditingController reasonController = TextEditingController();
  RefreshController prefresh = RefreshController();
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
    getVehicleList();
  }

  int id = 0;
  String token = "";
  List joblist = [];
  List MrfList = [];
  List driverList = [];
  var selectedDriver;
  var selectedmrf;
  bool assignloading = false;
  var nm = "sabari";

  loadMrf() async {
    //final String token = pref.getString('token') ?? "";
    final Response = await get(
      Uri.parse(baseUrl + "mrf-facilities"),
      headers: {"Authorization": "Bearer $token"},
    );

    if (Response.statusCode == 200) {
      MrfList = json.decode(Response.body)["data"];
    }
  }

  String FacilitName(int mrfID) {
    print(mrfID);
    for (var data in MrfList) {
      if (data["id"] == mrfID) {
        return data["name"];
      }
    }
    return "--:--";
  }

  loadDirverList() async {
    driverList.clear();
    final Response = await get(
      Uri.parse(baseUrl + "users?user_type=drivers"),
      headers: {
        'contentType': 'application/json',
        "Authorization": "Bearer $token"
      },
    );
    print(Response.body);
    if (Response.statusCode == 200) {
      var jsonData = json.decode(Response.body);
      for (var data in jsonData["data"]) {
        if (data["user_type"] == "drivers") {
          driverList.add(data);
        }
      }
      update();
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getdata();
  }

  findVehicleID(int driverId) {
    for (var data in vehicleList) {
      if (data["driver_id"] == driverId) {
        print(data["driver_id"]);
        print(driverId);
        return data["vehicle_no"];
      }
    }
    return "";
  }

  List vehicleList = [];
  void getVehicleList() async {
    //assigned
    final Response = await get(
      Uri.parse(baseUrl + "vehicles"),
      headers: {"Authorization": "Bearer $token"},
    );
    print(Response.body);
    if (Response.statusCode == 200) {
      var jsonData = json.decode(Response.body);
      vehicleList = jsonData["data"];
      //  joblist = jsonData["data"];
      // for (var data in jsonData["data"]) {

      //   if ()
      // }
      update();
    }
    //print(joblist);
    // prefresh.refreshCompleted();
    // update();
  }

  void getjoblist() async {
    //assigned
    final Response = await get(
      Uri.parse(baseUrl + "jobs/$id/list-jobs?status=assigned"),
      headers: {"Authorization": "Bearer $token"},
    );
    // print(Response.body);
    if (Response.statusCode == 200) {
      var jsonData = json.decode(Response.body);

      joblist = jsonData["data"];
      // for (var data in jsonData["data"]) {

      //   if ()
      // }
      update();
    }
    print(joblist);
    prefresh.refreshCompleted();
    update();
  }
}
