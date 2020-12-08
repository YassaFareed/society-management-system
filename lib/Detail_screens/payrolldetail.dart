import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class payrollWorker extends StatefulWidget {
  @override
  _payrollWorkerState createState() => _payrollWorkerState();
}

class _payrollWorkerState extends State<payrollWorker> {

  List<PieChartSectionData> _sections = List<PieChartSectionData>();
  int absent =5;
  int present =20;
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
      titlePositionPercentageOffset: 0.5,
      titleStyle:TextStyle(color: Colors.white,fontSize:20),
    );

    _sections = [_item1,_item2];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListView(
        padding: const EdgeInsets.all(20),
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
                       Icons.layers,
                        size:30.0,
                       ),
                        ),
                     SizedBox(width: MediaQuery.of(context).size.width*0.12),
                    Text('Total Present',style: TextStyle( fontSize:22.0)),
                     SizedBox(width: MediaQuery.of(context).size.width*0.05),
                    Text('20',style: TextStyle( fontSize:25.0)),
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
                        Icons.layers_clear,
                        size:30.0,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.135),
                    Text('Total Absent',style: TextStyle( fontSize:22.0)),
                    SizedBox(width: MediaQuery.of(context).size.width*0.05),
                    Text('5',style: TextStyle( fontSize:25.0)),
                  ],
                ),
              ),
            ),

          ),
          SizedBox(height:20,),

          Container(
            height: 280,
            color:Colors.white,
            child: Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
              child:AspectRatio(
                aspectRatio: 1,
                child: FlChart(
                  chart: PieChart(
                    PieChartData(sections: _sections, borderData:FlBorderData(show:false), centerSpaceRadius: 80, sectionsSpace:6),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Card(
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),

            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: AutoSizeText(
                        'Income Summary' ,
                        style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),
                        maxLines: 2,
                      ),
                    ),
                  ),

                  SizedBox(height: 8,),

                  Padding(
                    padding: const EdgeInsets.only(left:10.0,bottom: 3),
                    child: RichText(
                      text: TextSpan(style: new TextStyle(fontSize: 14.0, color: Colors.black,),
                        children: <TextSpan>[
                          new TextSpan(text: 'Name: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                          new TextSpan(text: 'Ali', style: new TextStyle(fontSize: 15),)],
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),

                  Padding(
                    padding: const EdgeInsets.only(left:10.0,bottom: 3),
                    child: RichText(
                      text: TextSpan(style: new TextStyle(fontSize: 14.0, color: Colors.black,),
                        children: <TextSpan>[
                          new TextSpan(text: 'Basic Salary: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                          new TextSpan(text: '\$5000', style: new TextStyle(fontSize: 15),)],
                      ),
                    ),
                  ),

                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0,bottom: 3),
                    child: RichText(
                      text: TextSpan(style: new TextStyle(fontSize: 14.0, color: Colors.black,),
                        children: <TextSpan>[
                          new TextSpan(text: 'Bonus:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                          new TextSpan(text: '\$1000', style: new TextStyle(fontSize: 15),)],
                      ),
                    ),
                  ),

                  SizedBox(height:8),

                  Padding(
                    padding: const EdgeInsets.only(left:10.0,bottom: 3),
                    child: RichText(
                      text: TextSpan(style: new TextStyle(fontSize: 14.0, color: Colors.black,),
                        children: <TextSpan>[
                          new TextSpan(text: 'Deduction per absence: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                          new TextSpan(text: '\$200', style: new TextStyle(fontSize: 15),)],
                      ),
                    ),
                  ),

                  SizedBox(height:8),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0,bottom: 3),
                    child: RichText(
                      text: TextSpan(style: new TextStyle(fontSize: 14.0, color: Colors.black,),
                        children: <TextSpan>[
                          new TextSpan(text: 'Total Deduction :',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                          new TextSpan(text: '\$1000', style: new TextStyle(fontSize: 15),)],
                      ),
                    ),
                  ),

                  SizedBox(height: 8,),

                  Padding(
                    padding: const EdgeInsets.only(left:10.0,bottom: 3),
                    child: RichText(
                      text: TextSpan(style: new TextStyle(fontSize: 14.0, color: Colors.black,),
                        children: <TextSpan>[
                          new TextSpan(text: 'Total Income :',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                          new TextSpan(text: '\$5000', style: new TextStyle(fontSize: 15),)],

                            ),
                    ),
                  ),
                  SizedBox(height: 8,),

                ],
              ),
            ),
          ),


        ],
      ),


    );
  }
}
