import 'package:flutter/material.dart';
import 'package:societyworker/Drawer/maindrawer.dart';
import 'package:fl_chart/fl_chart.dart';



class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {


  List<PieChartSectionData> _sections = List<PieChartSectionData>();
  int absent =4;
  int present =10;
  @override

  void initState() {
    super.initState();

    PieChartSectionData _item1 = PieChartSectionData(
      color: Colors.green,
      value: present.toDouble(),
      title: 'Present',
      radius: 50,
      titleStyle:TextStyle(color: Colors.white,fontSize:20),
    );

    PieChartSectionData _item2 = PieChartSectionData(
      color: Colors.redAccent,
      value: absent.toDouble(),
      title: 'Absent',
      radius: 50,
      titleStyle:TextStyle(color: Colors.white,fontSize:20),
    );

    _sections = [_item1,_item2];
  }

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
                    style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold, height:3, fontSize:30),
                  ),
                  height:200,

                  color:Colors.black,
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
                          style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold, height:3, fontSize:30),
                        ),

                        color:Colors.black,
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
              flex:4,
                child: Container(
                  child:AspectRatio(
                    aspectRatio: 1,
                    child: FlChart(
                      chart: PieChart(
                        PieChartData(sections: _sections, borderData:FlBorderData(show:true), centerSpaceRadius: 80, sectionsSpace:0),
                      ),
                    ),
                  ),
                  color:Colors.white,
                ),
            ),




    ],
        ),
    ),
    );

  }
}

