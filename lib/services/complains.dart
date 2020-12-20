import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:societyworker/Drawer/my_complain.dart';
import 'package:societyworker/constants/global_variables.dart';
import 'package:societyworker/setup_screens/complainscreen.dart';

class ComplainServices {
  Map<String, String> _headers = {
    "Content-Type": "application/json",
  };
  final BASE_URL = 'http://192.168.0.103:5000/api/v1';

  Future createComplain(title,complain) async
  {
    final path = '$BASE_URL/complains';
    var response;
    Map jsonBody = {
      "title":title,
      "name":user.name,
      "building":'',
      "flat":'',
      "description":complain,
      "email":user.email};
    try {
      print('POST API CALLED $path');
      response = await http.post(path,
          headers: _headers,
          body: json.encode(jsonBody),
          encoding: Encoding.getByName("utf-8"));
      print(response);
      var respondedMap = json.decode(response.body);
      print(respondedMap);
      myComplains = json.decode(response.body)['data'];
      print("HELLO COMPLAINS");
      print(myComplains);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return respondedMap;
      } else {
        return respondedMap;
      }
    } catch (e) {
      Fluttertoast.showToast(
//        msg: response?.body['msg'],
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }

  }

  Future getMyComplains()async{
    final path = '$BASE_URL/complains/myComplains';
    print(_headers);
    var response;
    Map jsonBody = {"email": user.email};
    try {
      print('POST API CALLED $path');
      response = await http.post(path,
          headers: _headers,
          body: json.encode(jsonBody),
          encoding: Encoding.getByName("utf-8"));
      print(response);
      var respondedMap = json.decode(response.body);
      print(respondedMap);
      myComplains = json.decode(response.body)['data'];
      print("HELLO COMPLAINS");
      print(myComplains);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return respondedMap;
      } else {
        return respondedMap;
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: response?.body['msg'],
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }

  }
  Future getComaplains() async {
    final path = '$BASE_URL/complains';
    print(_headers);
    var response;

    try {
      print("Get API CALLED $path");
      response = await http.get(path, headers: _headers);

      complains = json.decode(response.body)['data'];
      print(complains);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return complains;
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
