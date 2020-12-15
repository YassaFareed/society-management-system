import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/flutterToast.dart';
import 'package:http/http.dart' as http;

class StatusService {
  Map<String, String> _headers = {
    "Content-Type": "application/json",
  };
  final BASE_URL = 'http://192.168.0.108:5000/api/v1/workerstatus';

  Future updateHoursWorked(hours) async
  {
    final path = '$BASE_URL/hours';
    Map jsonBody = {
      "workerId":'5fc381e585700f170c48ceac',
      "hoursWorked":hours
    };
    print(jsonBody);
    print(_headers);
    var response;
    try {
      print('POST API CALLED $path');
      response = await http.post(path,
          headers: _headers,
          body: json.encode(jsonBody),
          encoding: Encoding.getByName("utf-8"));
      print(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response;
      }
    } catch (err) {
      Fluttertoast.showToast(
        msg: response?.body['msg'],
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      // return false;
    }
  }


  Future updateDayWorker(day) async
  {
    final path = '$BASE_URL/day';
    Map jsonBody = {
      "workerId":'5fc381e585700f170c48ceac',
      "day":day
    };
    print(jsonBody);
    print(_headers);
    var response;
    try {
      print('POST API CALLED $path');
      response = await http.post(path,
          headers: _headers,
          body: json.encode(jsonBody),
          encoding: Encoding.getByName("utf-8"));
      print(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response;
      }
    } catch (err) {
      Fluttertoast.showToast(
        msg: response?.body['msg'],
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      // return false;
    }
  }


  Future updateCheckinStatus(checkin) async
  {
    final path = '$BASE_URL/checkin';
    Map jsonBody = {
      "workerId":'5fc381e585700f170c48ceac',
      "checkin":checkin
    };
    print(jsonBody);
    print(_headers);
    var response;
    try {
      print('POST API CALLED $path');
      response = await http.post(path,
          headers: _headers,
          body: json.encode(jsonBody),
          encoding: Encoding.getByName("utf-8"));
      print(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response;
      }
    } catch (err) {
      Fluttertoast.showToast(
        msg: response?.body['msg'],
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      // return false;
    }
  }


  Future updateCheckoutStatus(checkout) async
  {
    final path = '$BASE_URL/checkout';
    Map jsonBody = {
      "workerId":'5fc381e585700f170c48ceac',
      "checkout":checkout
    };
    print(jsonBody);
    print(_headers);
    var response;
    try {
      print('POST API CALLED $path');
      response = await http.post(path,
          headers: _headers,
          body: json.encode(jsonBody),
          encoding: Encoding.getByName("utf-8"));
      print(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response;
      }
    } catch (err) {
      Fluttertoast.showToast(
        msg: response?.body['msg'],
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      // return false;
    }
  }

  Future updateDateStatus(nowdate) async
  {
    final path = '$BASE_URL/date';
    Map jsonBody = {
      "workerId":'5fc381e585700f170c48ceac',
      "date":nowdate
    };
    print(jsonBody);
    print(_headers);
    var response;
    try {
      print('POST API CALLED $path');
      response = await http.post(path,
          headers: _headers,
          body: json.encode(jsonBody),
          encoding: Encoding.getByName("utf-8"));
      print(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response;
      }
    } catch (err) {
      Fluttertoast.showToast(
        msg: response?.body['msg'],
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      // return false;
    }
  }






}
