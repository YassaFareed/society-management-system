import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/flutterToast.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Map<String, String> _headers = {
    "Content-Type": "application/json",
  };
  final BASE_URL = 'http://192.168.0.110:5000/api/v1/auth';
  Future login(email, password) async {
    final path = '$BASE_URL/login';
    print(email);
    print(email.runtimeType);
    print(password);
    Map jsonBody = {"email": email, "password": password , "role":"worker"};
    print(jsonBody);
    print(_headers);
    var response;
    try {
      print('POST API CALLED $path');
      response = await http.post(path,
          headers: _headers,
          body: json.encode(jsonBody),
          encoding: Encoding.getByName("utf-8"));
      var respondedMap = json.decode(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return respondedMap;
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

  Future<Map<String, dynamic>> forgetPassword(email) async {
    final path = '$BASE_URL/forgetpassword';
    Map jsonBody = {"email": email};
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

    Future<Map<String, dynamic>> resetPassword(password , token) async {
    final path = '$BASE_URL/resetpassword/$token';
    Map jsonBody = {"password": password};
    var response;
     var respondedMap;
    try {
      print('Put API CALLED $path');
      response = await http.put(path,
          headers: _headers,
          body: json.encode(jsonBody),
          encoding: Encoding.getByName("utf-8"));
      print(response);
       respondedMap = json.decode(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return respondedMap;
      } else {
        return respondedMap;
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg:  respondedMap?.body['msg'],
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  Future<bool> addResident(email , password , name , flat , building , cnic , phone , role) async
  {
    final path = '$BASE_URL/register';
    Map jsonBody = {
    "name":name,
    "phoneNumber":phone,
    "building":building,
    "flat":flat,
    "cnic":cnic,
    "email":email,
    "password":password,
    "role":role
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
        return true;
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

    Future<bool> addWorker(email , password , name ,address , cnic , phone , role , salary , timeing , type) async
  {
    final path = '$BASE_URL/registerWorker';
    Map jsonBody = {
    "name":name,
    "phoneNumber":phone,
    "address":address,
    "type":type,
    "salary":salary,
    "workerTime":timeing,    
    "cnic":cnic,
    "email":email,
    "password":password,
    "role":role
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
        return true;
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
