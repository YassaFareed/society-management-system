

import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class attendanceMark extends StatefulWidget {
  @override
  _attendanceMarkState createState() => _attendanceMarkState();
}

class _attendanceMarkState extends State<attendanceMark> {
  @override
  void initState() {
    // TODO: implement initState
    starttimer();
  }

  @override
  bool pressAttention = false;
  String value = 'Check-in';
  DateFormat dateFormat = DateFormat("dd MMMM yyyy");
  DateFormat timeFormat = DateFormat("HH:mm:ss");
  DateFormat dayFormat = DateFormat('EEEE');

  //stopwatch
  //bool resetispressed = true;
 // bool startispressed = true;
 // bool stopispressed = true;
  String stoptimetodisplay = "00:00:00";
  var swatch = Stopwatch();
  final dur = const Duration(seconds: 1);

  void starttimer(){
    Timer(dur, keeprunning); // starts a timer
  }

  void keeprunning(){
      starttimer();

    setState(() {

      if(swatch.isRunning)
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


  void isTest()
  {
    pressAttention = !pressAttention;
    if(pressAttention==false)
    {
      value='Check-in';
      swatch.stop();

    }
    else{
      value='Check-out';
      swatch.start();

    }
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children:[
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                width: MediaQuery.of(context).size.width*0.9,
                child: Row(
                  children:[
                    Ink(

                      child: Icon(
                        Icons.calendar_today,
                        size:30.0,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.05),
                    Text('Date',style: TextStyle( fontSize:22.0)),
                    SizedBox(width: MediaQuery.of(context).size.width*0.05),
                    Text(dateFormat.format(DateTime.now()).toString(),style: TextStyle( fontSize:22.0)),
                  ],
                ),
              ),
            ),


          ),
          SizedBox(height:10,),
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width*0.9,
                child: Row(
                  children:[
                    Ink(

                      child: Icon(
                        Icons.calendar_view_day,
                        size:30.0,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.05),
                    Text('Day',style: TextStyle( fontSize:22.0)),
                    SizedBox(width: MediaQuery.of(context).size.width*0.08),
                    Text(dayFormat.format(DateTime.now()).toString(),style: TextStyle( fontSize:22.0)),
                  ],
                ),
              ),
            ),

          ),
          SizedBox(height:20,),

          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                width: MediaQuery.of(context).size.width*0.9,
                child: Row(
                  children:[
                    Ink(

                      child: Icon(
                        Icons.timer,
                        size:30.0,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.05),
                    Text('Time',style: TextStyle( fontSize:22.0)),
                    SizedBox(width: MediaQuery.of(context).size.width*0.06),
                    Text(timeFormat.format(DateTime.now()).toString(),style: TextStyle( fontSize:22.0)),
                  ],
                ),
              ),
            ),

          ),
          SizedBox(height:20,),


          Container(
            height: MediaQuery.of(context).size.height*0.3,
            width: MediaQuery.of(context).size.width*0.9,

            child: Padding(
              padding: const EdgeInsets.all(8.0),
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
              ),

          SizedBox(height:10,),
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width*0.9,
                child: Row(
                  children:[
                    Ink(

                      child: Icon(
                        Icons.access_time,
                        size:30.0,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.05),
                    Text('Hours Worked',style: TextStyle( fontSize:22.0)),
                    SizedBox(width: MediaQuery.of(context).size.width*0.08),
                    Text(stoptimetodisplay,style: TextStyle( fontSize:22.0)),
                  ],
                ),
              ),
            ),

          ),

          SizedBox(height:10,),
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width*0.9,
                child: Row(
                  children:[
                    Ink(

                      child: Icon(
                        Icons.bookmark_border,
                        size:30.0,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.05),
                    Text('Attendance',style: TextStyle( fontSize:22.0)),
                    SizedBox(width: MediaQuery.of(context).size.width*0.15),
                    Text('Pending',style: TextStyle( fontSize:22.0)),
                  ],
                ),
              ),
            ),

          ),


        ],
      ),
    );
  }
}