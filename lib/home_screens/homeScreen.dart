import 'package:flutter/material.dart';
import 'package:societyworker/Drawer/maindrawer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:societyworker/home_screens/attendancescreen.dart';
import 'package:societyworker/home_screens/house_hould_screen.dart';
import 'package:societyworker/home_screens/markattendance.dart';
import 'package:societyworker/home_screens/worker_screen.dart';
import 'package:societyworker/setup_screens/complainscreen.dart';
import 'package:societyworker/Detail_screens/payrolldetail.dart';


class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {

  var PageOptions = [attendanceMark() , payrollWorker() , complainManagement() , houseHolds(),workers()];
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.black,

      ),
      drawer:  Main_Drawer(),
      body: PageOptions[_page],

      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: 50.0,
        items: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text("Status",style: TextStyle(color: _page==0 ?Colors.black: Colors.white),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text("Payroll",style: TextStyle(color: _page==1 ?Colors.black: Colors.white),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text("Complains",style: TextStyle(color: _page==2 ?Colors.black: Colors.white),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text("Households",style: TextStyle(color: _page==3 ?Colors.black: Colors.white),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text("Workers",style: TextStyle(color: _page==4 ?Colors.black: Colors.white),),

          ),
        ],
        color: Colors.black,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index){
          setState(() {
            _page =  index;
          });
        },
      ),
    );
  }
}





