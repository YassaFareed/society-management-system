import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class houseHoldInfo extends StatefulWidget {
  @override
  _houseHoldInfoState createState() => _houseHoldInfoState();
}

class _houseHoldInfoState extends State<houseHoldInfo> {
  @override
  var _status = ['Not Listened', 'In Progress', 'Listened'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child:
         Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
                ContainerWidget(name: 'Ali Muhammad Murad Ali',phone: '03222092122',adress: 'Y/812 Karimabad Colony',cnic: '42101-7986330-1'),
                ContainerWidget(name: 'Hassan Butt',phone: '03122343453',adress: 'Y/001 Karimabad Colony',cnic: '42494-9738291-1'),
                ContainerWidget(name: 'Yassa Fareed',phone: '03028374845',adress: 'Y/348 Karimabad Colony',cnic: '42101-7988330-1'),
            ]),
      ),
    ));
  }
}
class ContainerWidget extends StatefulWidget {

  String name;
  String phone;
  String adress;
  String cnic;

  ContainerWidget({ Key key, this.name,this.phone,this.adress,this.cnic }): super(key: key);
  @override
  _ContainerWidgetState createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        height: 380.0,

        decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.0) ),
        child: Card(

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
              side: new BorderSide(color: Colors.grey, width: 2.0),
          ),
          borderOnForeground: true,
          elevation: 10.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: 150.0,
                    height: 150.0,
                    margin: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://1z1euk35x7oy36s8we4dr6lo-wpengine.netdna-ssl.com/wp-content/uploads/2019/11/numze-e1572781662446.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Name: "+widget.name,
                    style: TextStyle(
                        fontSize: 17),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Phone Number: "+widget.phone,
                      style: TextStyle(
                          fontSize: 17)),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Address: "+widget.adress,
                      style: TextStyle(
                          fontSize: 17)),
                  SizedBox(
                    height: 10,
                  ),
                  Text("CNIC: "+widget.cnic,
                      style: TextStyle(
                          fontSize: 17)),
                ],
              ),
            ],

          ),

        ),
      ),
    );
  }
}
