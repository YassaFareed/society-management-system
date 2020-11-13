import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:societyworker/home_screens/markattendance.dart';
import 'package:societyworker/home_screens/homescreen.dart';



class attendanceScreen extends StatefulWidget {
  @override
  _attendanceScreenState createState() => _attendanceScreenState();
}

class _attendanceScreenState extends State<attendanceScreen> {
  @override
  int index = 0;


//<<<<<<< HEAD
////  var Pageoptions = [ListofGuards() , ListOfSweapers()];
//=======
// // var Pageoptions = [ListofGuards() , ListOfSweapers()];
//>>>>>>> 604b27ac78656071f9448eca5b3225043271a098



  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: Colors.black,
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  child: Text("Attendance"),
                ),
                Tab(
                  child: Text("Check-in/Check-out"),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Attendance(),
            attendanceMark(),
          ],
        ),
      ),
    );
  }
}
//Column(
//children: <Widget>[

//
//
//],
//),
