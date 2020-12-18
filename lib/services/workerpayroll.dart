import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:societyworker/Detail_screens/payrolldetail.dart';

class PayrollService {
  Map<String, String> _headers = {
    "Content-Type": "application/json",
  };
  final BASE_URL = 'http://192.168.100.134:5000/api/v1/workerpayroll';

  Future getWorkerPayroll() async {
    final path = '$BASE_URL';
    Map jsonBody = {"workerId": "5fc381e585700f170c48ceac"};
    var response;
    try {
      print('POST API CALLED $path');
      response = await http.post(path,
          headers: _headers,
          body: json.encode(jsonBody),
          encoding: Encoding.getByName("utf-8"));
      print(response.body);
      payroll = json.decode(response.body)['data'];
//      print("HELO THIS IS PAY ROLL");
     print(payroll[0]);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return payroll;
      } else {
        return payroll;
      }
    } catch (e) {
      print('eeerrrorr');
    }
  }

  Future<Map<String, dynamic>> getworkerName() async {
    final path = '$BASE_URL/name';
    Map jsonBody = {"workerId": "5fc381e585700f170c48ceac"};
    var response;
    try {
      print('POST API CALLED $path');
      response = await http.post(path,
          headers: _headers,
          body: json.encode(jsonBody),
          encoding: Encoding.getByName("utf-8"));
      print(response);
      var respondedMap = json.decode(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return respondedMap;
      } else {
        return respondedMap;
      }
    } catch (e) {
      print('Error');
    }
  }
}








