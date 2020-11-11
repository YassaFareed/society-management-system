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


  void isTest()
  {
    pressAttention = !pressAttention;
    if(pressAttention==false)
    {
      value='Check-in';
    }
    else{
      value='Check-out';
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
         child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children:[

             Text('Current Time',
                 style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
             SizedBox(
               height: 10,
             ),
             Text(dateFormat.format(DateTime.now()).toString(),
                 style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
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
           ],


         ),
      ),
    );
  }
}
