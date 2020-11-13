import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class payrollWorker extends StatefulWidget {
  @override
  _payrollWorkerState createState() => _payrollWorkerState();
}

class _payrollWorkerState extends State<payrollWorker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListView(
        padding: const EdgeInsets.all(20),
        children:[
         Container(
              child:Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children:[
                Ink(
                   decoration: ShapeDecoration(
                     color: Colors.red,
                     shape: CircleBorder(),
                   ),
                  child: Icon(
                   Icons.attach_money,
                    size:30.0,
                   ),
                    ),
                Text('Basic Income',style: TextStyle(fontWeight: FontWeight.bold, fontSize:25.0)),
                Text('\$1000',style: TextStyle(fontWeight: FontWeight.bold, fontSize:25.0)),
              ],
            ),
           color: Colors.lightBlue,
           height:100,
         ),
        SizedBox(
        height:20,
        ),

        Container(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  Ink(
                    decoration: ShapeDecoration(
                      color: Colors.red,
                      shape: CircleBorder(),
                    ),
                    child: Icon(
                      Icons.arrow_downward_outlined,
                      size:30.0,
                    ),
                  ),
                  Text('Deductions',style: TextStyle(fontWeight: FontWeight.bold, fontSize:25.0)),
                  Text('\$1000',style: TextStyle(fontWeight: FontWeight.bold, fontSize:25.0)),
                ],
              ),
              color: Colors.redAccent,
              height:100,
            ),
          SizedBox(
            height:20,
          ),

          Container(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Ink(
                  decoration: ShapeDecoration(
                    color: Colors.red,
                    shape: CircleBorder(),
                  ),
                  child: Icon(
                    Icons.arrow_upward_outlined,
                    size:30.0,
                  ),
                ),
                Text('Bonus',style: TextStyle(fontWeight: FontWeight.bold, fontSize:25.0)),
                Text('\$1000',style: TextStyle(fontWeight: FontWeight.bold, fontSize:25.0)),
              ],
            ),
            color: Colors.green,
            height:100,
          ),
          SizedBox(
            height:40,
          ),
          Card(
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Column(
                    children: <Widget>[
                      Container(

                        width: 300.0,
                        height: 30.0,
                        child: Center(
                          child: AutoSizeText(
                            'Income Summary' ,
                            style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),
                            maxLines: 2,
                          ),
                        ),
                      ),

                      SizedBox(height: 8,),

                      // Text('Complainer Name: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                      Container(
                        height: 20,
                        width: 300,
                        child: Row(

                          children: <Widget>[
                            Expanded(
                              child: Container(
                                child: RichText(
                                  text: TextSpan(style: new TextStyle(fontSize: 14.0, color: Colors.black,),
                                    children: <TextSpan>[
                                      new TextSpan(text: 'Name: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                      new TextSpan(text: 'Ali', style: new TextStyle(fontSize: 15),)],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 8,),
                      Container(
                        height: 20,
                        width: 300,
                        child: Row(

                          children: <Widget>[
                            Expanded(
                              child: Container(
                                child: RichText(
                                  text: TextSpan(style: new TextStyle(fontSize: 14.0, color: Colors.black,),
                                    children: <TextSpan>[
                                      new TextSpan(text: 'Deduction per absence: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                      new TextSpan(text: '200', style: new TextStyle(fontSize: 15),)],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(
                        height:8,
                      ),
                      Container(
                        height: 20,
                        width: 300,
                        child: Row(

                          children: <Widget>[
                            Expanded(
                              child: Container(
                                child: RichText(
                                  text: TextSpan(style: new TextStyle(fontSize: 14.0, color: Colors.black,),
                                    children: <TextSpan>[
                                      new TextSpan(text: 'Basic Salary: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                      new TextSpan(text: '5000', style: new TextStyle(fontSize: 15),)],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 8,),
                      Container(
                        height: 20,
                        width: 300,
                        child: Row(

                          children: <Widget>[
                            Expanded(
                              child: Container(
                                child: RichText(
                                  text: TextSpan(style: new TextStyle(fontSize: 14.0, color: Colors.black,),
                                    children: <TextSpan>[
                                      new TextSpan(text: 'Bonus:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                      new TextSpan(text: '1000', style: new TextStyle(fontSize: 15),)],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 8,),
                      Container(
                        height: 20,
                        width: 300,
                        child: Row(

                          children: <Widget>[
                            Expanded(
                              child: Container(
                                child: RichText(
                                  text: TextSpan(style: new TextStyle(fontSize: 14.0, color: Colors.black,),
                                    children: <TextSpan>[
                                      new TextSpan(text: 'Total absents :',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                      new TextSpan(text: '5', style: new TextStyle(fontSize: 15),)],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      SizedBox(height: 12,),

                      Container(
                        height: 20,
                        width: 300,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                child: RichText(
                                  text: TextSpan(style: new TextStyle(fontSize: 14.0, color: Colors.black,),
                                    children: <TextSpan>[
                                      new TextSpan(text: 'Total Income :',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                      new TextSpan(text: '\$5000', style: new TextStyle(fontSize: 15),)],

                                        ),
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),
                      // Text(
                      //   "Complain:",
                      //   style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                      // ),
                      // SizedBox(height: 8,),

                    ],
                  ),
                ),
              ],
            ),
          ),


        ],
      ),


    );
  }
}
