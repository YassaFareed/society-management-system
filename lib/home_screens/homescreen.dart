import 'package:flutter/material.dart';
import 'package:societyworker/Drawer/maindrawer.dart';


class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('home'),
        backgroundColor: Colors.black,
      ),
        drawer:mainDrawer(),
        body: Attendance(),
    );

  }
}

class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  int absent =0;
  int present =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            Expanded(
              flex:1,
                child:Container(
                  child:Text(
                    'Attendance Status',
                    textAlign:TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, height:3, fontSize:30),
                  ),
                  height:200,

                  color:Colors.black12,
                )
            ),
            Expanded(
              flex:1,
              child: Container(

                color:Colors.purpleAccent,
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,

                  children: [
                    Expanded(
                      child:Container(
                        child:Text(
                          'This Month:',
                          textAlign:TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, height:3, fontSize:30),
                        ),

                        color:Colors.white,
                        height: 100,
                        width: 50,
                      ),
                    ),
                    Expanded(
                      flex:1,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                      children:[
                        Expanded(
                         child: Container(
                            child:Text(
                              absent.toString(),
                          textAlign:TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, height:1.5, fontSize:25),
                        ),
                        color:Colors.redAccent,
                        height: 50,
                        width: 100,
                      ),
                        ),
                        Expanded(
                          flex:1,
                          child:Container(
                            child:Text(
                              present.toString(),
                              textAlign:TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold, height:1.5, fontSize:25),
                            ),
                            color:Colors.green,
                            height: 50,
                            width: 100,
                          ),
                        ),

                     ],
                    ),
                    ),
                  ],
                )

              ),
            ),
            Expanded(
                flex:1,

                child: Container(
                     child:Text(
                    'Mark your attendence here',
                    textAlign:TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, height:2, fontSize:25),
                  ),


                  color:Colors.white,
                ),

                ),


            Expanded(
              flex:4,
              child:Container(

                color:Colors.white,
              )
            ),


                 ],

            ),
            )
    );

  }
}

