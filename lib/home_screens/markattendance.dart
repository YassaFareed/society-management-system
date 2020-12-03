import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class attendanceMark extends StatefulWidget {
  @override
  _attendanceMarkState createState() => _attendanceMarkState();
}

class _attendanceMarkState extends State<attendanceMark> {

  @override
  bool pressAttention = false;
  String value = 'Check-in';
  DateFormat dateFormat = DateFormat("dd-MM-yyyy  HH:mm:ss");

  //stopwatch
  bool resetispressed = true;
  bool startispressed = true;
  bool stopispressed = true;
  String stoptimetodisplay = "00:00:00";
  var swatch = Stopwatch();
  final dur = const Duration(seconds: 1);

  void starttimer(){
    Timer(dur, keeprunning); // starts a timer
  }

  void keeprunning(){
    if(swatch.isRunning){
      starttimer();
    }
    setState(() {
      stoptimetodisplay = swatch.elapsed.inHours.toString().padLeft(2, "0") + ":" //if string is < width 2 then add 0 on left
          + (swatch.elapsed.inMinutes%60).toString().padLeft(2, "0") + ":"
          + (swatch.elapsed.inSeconds%60).toString().padLeft(2, "0");
    });
  }

  /*void resetstopwatch(){
    setState(() {
      startispressed = true;
      resetispressed = true;
    });
    swatch.stop();
   // stoptimetodisplay = "00:00:00";
  }*/
  void stopstopwatch(){
    setState(() {
      stopispressed = true;
      resetispressed = false;
    });
    swatch.stop();
  }

  void startstopwatch(){
    swatch.start();
    starttimer();
  }

  void isTest()
  {
    pressAttention = !pressAttention;
    if(pressAttention==false)
    {
      value='Check-in';
      stopstopwatch();

    }
    else{
      value='Check-out';
      startstopwatch();

    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[

            Text('Current Time',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700)),
            SizedBox(
              height: 10,
            ),
            Text(dateFormat.format(DateTime.now()).toString(),
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700)),
            SizedBox(
              height: 60,
            ),
            Container(
              width: 200,
              height: 200,
              child: MaterialButton(

                child: Text(value, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                textColor: Colors.white,
                shape: CircleBorder(
                    side: BorderSide(width: 6, color: Colors.red, style: BorderStyle.solid)
                ),
                color: pressAttention ? Colors.orange : Colors.blue,


                onPressed: () => setState(() {
                  isTest();
                }),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              'Hours Worked',
              style: TextStyle(
                fontSize:30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              alignment:Alignment.center,
              child: Text(
                stoptimetodisplay,
                style: TextStyle(
                  fontSize:30.0,
                  fontWeight: FontWeight.w700,
                ),
              ),

            ),
          ],


        ),
      ),
    );
  }
}