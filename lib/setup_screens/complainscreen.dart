import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:societyworker/services/complains.dart';


class complainManagement extends StatefulWidget {
  @override
  _complainManagementState createState() => _complainManagementState();
}
List complains;
class _complainManagementState extends State<complainManagement> {


  @override
  void initState(){
    super.initState();

    ComplainServices().getComaplains();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: complains.length==0 ?Center(child: Text("There are no complains")):ListView.builder(
          itemCount: complains==null ?0: complains.length,
          itemBuilder: (context , index){
            return ColoumnWidget(title:complains[index]['title'],name:complains[index]['name'],flat:complains[index]['flat'].toString(),building: complains[index]['building'],date: complains[index]['createdAt'],description:complains[index]['description'] , status:complains[index]['status'] , objId: complains[index]['_id'],);
          }
      ),

    );

  }
}


class ColoumnWidget extends StatefulWidget {
  String objId;
  String title;
  String status;
  String name;
  String flat;
  String building;
  String date;
  String description;


  ColoumnWidget(
      {Key key,
        this.title,
        this.name,
        this.flat,
        this.building,
        this.date,
        this.description,
        this.status,
        this.objId})
      : super(key: key);

  @override
  _ColoumnWidgetState createState() => _ColoumnWidgetState();
}

class _ColoumnWidgetState extends State<ColoumnWidget> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16,8,16,8),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.grey,width: 2),),
        width: double.infinity,
        height: 320.0,
        child: Card(
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
                          'Tittle: '+ widget.title ,
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
                                    new TextSpan(text: widget.name, style: new TextStyle(fontSize: 15),)],
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
                                    new TextSpan(text: 'Building: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                    new TextSpan(text: widget.building, style: new TextStyle(fontSize: 15),)],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: RichText(
                                text: TextSpan(style: new TextStyle(fontSize: 14.0, color: Colors.black,),
                                  children: <TextSpan>[
                                    new TextSpan(text: 'Flat: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                    new TextSpan(text: widget.flat, style: new TextStyle(fontSize: 15),)],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      width: 300.0,
                      height: 20,
                      child: RichText(
                        text: TextSpan(
                          style: new TextStyle(fontSize: 14.0, color: Colors.black,),
                          children: <TextSpan>[
                            new TextSpan(text: 'Date: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                            new TextSpan(text: widget.date, style: new TextStyle(fontSize: 15),)],
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(

                      width: 300.0,
                      child: RichText(
                        text: TextSpan(
                          style: new TextStyle(fontSize: 14.0, color: Colors.black,),
                          children: <TextSpan>[
                            new TextSpan(text: 'Status: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                            new TextSpan(text: widget.status, style: new TextStyle(fontSize: 15),)],
                        ),
                      ),
                    ),


                    SizedBox(height: 12,),
                    // Text(
                    //   "Complain:",
                    //   style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                    // ),
                    // SizedBox(height: 8,),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.black)),
                      width: 300.0,
                      height: 140.0,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: AutoSizeText(
                          widget.description,
                          style: TextStyle(fontSize: 15.0),
                          maxLines: 6,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

