import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class complainManagement extends StatefulWidget {
  @override
  _complainManagementState createState() => _complainManagementState();
}

class _complainManagementState extends State<complainManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child:
            Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
              ColoumnWidget(title:'Guard Absent',name:'Ali Muhamamd',flat:'812',building: 'Y',date: '4 Nov 2020',status:'Pending',description:'Guard Absent on 23 November at around 2 to 3 o clock'),
              ColoumnWidget(title:'Sweeper Misbehave ',name:'Hassan Butt',flat:'204',building: 'KA3',date: '5 Nov 2020',status:'Listened',description:'Sweeper had misbehaved with me on 23 November at around 2 to 3 o clock while i was handed him over garbage '),
              ColoumnWidget(title:'Construction work ',name:'Yassa',flat:'667',building: 'W',date: '3 Nov 2020',status:'Not Listened',description:'Residual of Construction work was thrown besides our building'),
            ]),
          ),
        ));
  }
}

class ColoumnWidget extends StatefulWidget {
  String title;
  String status;
  String name;
  String flat;
  String building;
  String date;
  String description;

  ColoumnWidget({ Key key, this.title,this.name,this.flat,this.building,this.date,this.status,this.description }): super(key: key);


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
        height: 310.0,
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
                          'Title: '+ widget.title ,
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
                                    new TextSpan(text: 'Date: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                    new TextSpan(text: widget.date, style: new TextStyle(fontSize: 15),)],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: RichText(
                                text: TextSpan(style: new TextStyle(fontSize: 14.0, color: Colors.black,),
                                  children: <TextSpan>[
                                    new TextSpan(text: 'Status: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                    new TextSpan(text: widget.status, style: new TextStyle(fontSize: 15),)],
                                ),
                              ),                              ),
                          )
                        ],
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


// class _complainManagementState extends State<complainManagement> {
//   var _status = ['Not Listened', 'In Progress', 'Listened'];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//       child:
//           Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
//            Container(
//           padding: EdgeInsets.all(10),
//           width: double.infinity,
//           height: 300.0,
//           decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.0)),
//           child: Card(
//             elevation: 10.0,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     children: <Widget>[
//                       Center(child: Text("Title Of Complain")),
//                       SizedBox(height: 10,),
//                       DropdownButton<String>(
//                         isExpanded: false,
//                         focusColor: Colors.grey,
//                         hint: Text("Status Of Complain"),
//                         items: _status.map((String dropDownStringItem) {
//                           return DropdownMenuItem<String>(
//                             value: dropDownStringItem,
//                             child: Text(dropDownStringItem),
//                           );
//                         }).toList(),
//                         onChanged: (String newvalue) {
//                           setState(() {});
//                         },
//                       ),
//                       SizedBox(height: 10,),
//                       Text(
//                         "Complain:",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(height: 10,),
//                       Container(
//                         width: 300.0,
//                         height: 140.0,
//                         child: AutoSizeText(
//                           'This string will be automatically resized to fit in two lines.This string will be automatically resized to fit in two lines.',
//                           style: TextStyle(fontSize: 17.0),
//                           maxLines: 6,
//                         ),
//                       ),
//
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//             Container(
//               padding: EdgeInsets.all(10),
//               width: double.infinity,
//               height: 300.0,
//               decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.0)),
//               child: Card(
//                 elevation: 10.0,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         children: <Widget>[
//                           Center(child: Text("Title Of Complain")),
//                           SizedBox(height: 10,),
//                           DropdownButton<String>(
//                             isExpanded: false,
//                             focusColor: Colors.grey,
//                             hint: Text("Status Of Complain"),
//                             items: _status.map((String dropDownStringItem) {
//                               return DropdownMenuItem<String>(
//                                 value: dropDownStringItem,
//                                 child: Text(dropDownStringItem),
//                               );
//                             }).toList(),
//                             onChanged: (String newvalue) {
//                               setState(() {});
//                             },
//                           ),
//                           SizedBox(height: 10,),
//                           Text(
//                             "Complain:",
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(height: 10,),
//                           Container(
//                             width: 300.0,
//                             height: 140.0,
//                             child: AutoSizeText(
//                               'This string will be automatically resized to fit in two lines.This string will be automatically resized to fit in two lines.',
//                               style: TextStyle(fontSize: 17.0),
//                               maxLines: 6,
//                             ),
//                           ),
//
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.all(10),
//               width: double.infinity,
//               height: 300.0,
//               decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.0)),
//               child: Card(
//                 elevation: 10.0,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         children: <Widget>[
//                           Center(child: Text("Title Of Complain")),
//                           SizedBox(height: 10,),
//                           DropdownButton<String>(
//                             isExpanded: false,
//                             focusColor: Colors.grey,
//                             hint: Text("Status Of Complain"),
//                             items: _status.map((String dropDownStringItem) {
//                               return DropdownMenuItem<String>(
//                                 value: dropDownStringItem,
//                                 child: Text(dropDownStringItem),
//                               );
//                             }).toList(),
//                             onChanged: (String newvalue) {
//                               setState(() {});
//                             },
//                           ),
//                           SizedBox(height: 10,),
//                           Text(
//                             "Complain:",
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(height: 10,),
//                           Container(
//                             width: 300.0,
//                             height: 140.0,
//                             child: AutoSizeText(
//                               'This string will be automatically resized to fit in two lines.This string will be automatically resized to fit in two lines.',
//                               style: TextStyle(fontSize: 17.0),
//                               maxLines: 6,
//                             ),
//                           ),
//
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//       ]),
//     ));
//   }
// }

