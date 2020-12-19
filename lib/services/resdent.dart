import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:societyworker/home_screens/house_hold_info.dart';
import 'package:societyworker/home_screens/house_hould_screen.dart';

class ResidentServices {
  Map<String, String> _headers = {
    "Content-Type": "application/json",
  };
  final BASE_URL = 'http://192.168.0.101:5000/api/v1/resident';
  Future getAllBuildings(build) async {
    final path = '$BASE_URL/building';
    print(_headers);
    var response;

    Map jsonbody = {"building": build};
    try {
      print("Get API CALLED $path");
      response = await http.post(
          path ,
          body: json.encode(jsonbody),
          headers: _headers ,
          encoding: Encoding.getByName("utf-8")
      );

      residentsByBuildings = json.decode(response.body)['data'];

      print(residentsByBuildings);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return true;
      }else
      {
        return false;
      }
    } catch (err) {
      Fluttertoast.showToast(
        msg: "allow",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }
  Future getByBuildings() async {
    final path = '$BASE_URL/buildings';
    print(_headers);
    var response;
    var mapedResponse;
    try {
      print("Get API CALLED $path");
      response = await http.get(path ,headers: _headers );

      mapedResponse = json.decode(response.body)['data'];
      for(int i = 0 ; i < mapedResponse.length ; i++)
      {
        blocks.add(mapedResponse[i]['building']);
        print(mapedResponse[i]['building']);
      }
      //print(mapedResponse);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return mapedResponse;
      }
    } catch (err) {
      Fluttertoast.showToast(
        msg: "allow",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }



}
