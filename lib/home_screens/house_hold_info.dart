import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:toast/toast.dart';


class houseHoldInfo extends StatefulWidget {

  @override

  _houseHoldInfoState createState() => _houseHoldInfoState();
}
List residentsByBuildings;

class _houseHoldInfoState extends State<houseHoldInfo> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: ListView.builder(
            itemCount: residentsByBuildings.length,
            itemBuilder: (context , index){
              return  SingleChildScrollView(
                child:
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      ContainerWidget(name: residentsByBuildings[index]['name'],phone:residentsByBuildings[index]['phoneNumber'].toString(),adress: residentsByBuildings[index]['building'] ,cnic: residentsByBuildings[index]['cnic'].toString()),
                    ]),
              );
            },

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
        height: 360.0,

        decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.0) ),
        child: Card(

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: new BorderSide(color: Colors.grey, width: 2.0),
          ),
          borderOnForeground: true,
          elevation: 10.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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

        ),
      ),
    );
  }
}

