import 'package:flutter/material.dart';
import 'package:societyworker/Drawer/maindrawer.dart';
import 'package:societyworker/home_screens/homescreen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:societyworker/home_screens/markattendance.dart';



class navBar extends StatefulWidget {
  @override
  _navBarState createState() => _navBarState();
}

class _navBarState extends State<navBar> {

  var PageOptions = [homeScreen() , attendanceMark()];
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.black,

      ),
      drawer:  mainDrawer(),
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
            child: Text("Check-in",style: TextStyle(color: _page==1 ?Colors.black: Colors.white),),
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
