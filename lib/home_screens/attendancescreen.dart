// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:societyworker/home_screens/markattendance.dart';
// import 'package:societyworker/home_screens/attendance.dart';
//
//
//
// class attendanceScreen extends StatefulWidget {
//   @override
//   _attendanceScreenState createState() => _attendanceScreenState();
// }
//
// class _attendanceScreenState extends State<attendanceScreen> {
//   @override
//   int index = 0;
//
//
//
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: PreferredSize(
//           preferredSize: Size.fromHeight(50.0),
//           child: AppBar(
//             backgroundColor: Colors.black,
//             bottom: TabBar(
//               tabs: <Widget>[
//                 Tab(
//                   child: Text("Check-in/Check-out"),
//
//                 ),
//                 Tab(
//                   child: Text("Attendance"),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         body: TabBarView(
//           children: <Widget>[
//             attendanceMark(),
//             Attendance(),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
// //Column(
// //children: <Widget>[
//
// //
// //
// //],
// //),
