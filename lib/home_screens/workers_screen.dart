import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:societyworker/detail_screen/guards_detail.dart';
import 'package:societyworker/detail_screen/sweeper_detail.dart';


class workers extends StatefulWidget {
  @override
  _workersState createState() => _workersState();
}

class _workersState extends State<workers> {
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
                  child: Text("Guards"),
                ),
                Tab(
                  child: Text("Sweepers"),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            guardDetail(),
            sweeperDetail()
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
