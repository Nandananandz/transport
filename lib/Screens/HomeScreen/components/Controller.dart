import 'dart:convert';

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

  loadMrf() async {}

  loadDirverList() async {}

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getdata();
  }

  void getjoblist() async {
    print(baseUrl + "jobs/$id/list-jobs");
    print(token);
    final Response = await get(
      Uri.parse(baseUrl + "jobs/$id/list-jobs?status=initiated"),
      headers: {"Authorization": "Bearer $token"},
    );
    print(Response.body);
    if (Response.statusCode == 200) {
      var data = json.decode(Response.body);
      print(data[data]);
      print(Response.body);
      joblist = data["data"];
      update();
    }
    print(joblist);
  }
}
