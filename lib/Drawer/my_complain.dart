import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:toast/toast.dart';
import 'package:societyworker/services/complains.dart';

class myComplain extends StatefulWidget {
  @override
  myComplainState createState() => myComplainState();
}


List myComplains;
class myComplainState extends State<myComplain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:myComplains.length==0 ? Center(child: Text("There are no complains")):ListView.builder(
          itemCount: myComplains==null ?0: myComplains.length,
          itemBuilder: (context , index){
            return ColoumnWidget(title:myComplains[index]['title'],name:myComplains[index]['name'],flat:myComplains[index]['flat'].toString(),building: myComplains[index]['building'],date: myComplains[index]['createdAt'].toString(),description:myComplains[index]['description'] , status:myComplains[index]['status']??"Not Listened" , objId: myComplains[index]['_id'],);
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

  String complainErrorText;
  bool complainProvided=true;
  TextEditingController _complain = TextEditingController();


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

          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              children: <Widget>[


                Row(
                  children: [

                    Expanded(
                      flex:28,
                      child: Container(
                        child: Center(
                          child: AutoSizeText(
                            'Tittle: ' + widget.title,
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                            maxLines: 2,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex:5,
                      child: Container(
                          child: FlatButton(
                            child: Icon(Icons.edit,size: 20,color: Colors.black,),
                            onPressed: () {
                              Navigator.pop(context);
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(20.0)), //this right here
                                      child: Container(
                                        height: 300,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(top:10,left: 10),
                                                child: Text(
                                                  "Edit Complain",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 15.0,
                                              ),
                                              TextField(
                                                //controller: _complain,
                                                maxLines: 6,
                                                decoration: InputDecoration(

                                                  //labelText: 'Email',
                                                  //hintText: "previous name:"+block[index],
                                                  labelStyle: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.grey,
                                                  ),
                                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                                  contentPadding:
                                                  EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                      BorderRadius.all(Radius.circular(15))),

                                                ),
                                                onTap: () {},
                                                onChanged: (value){
                                                  setState(() {
                                                    if(value.isEmpty)
                                                      complainProvided=false;
                                                    else
                                                      complainProvided=true;
                                                  });
                                                },
                                                obscureText: false,
                                              ),
                                              SizedBox(
                                                height: 15.0,
                                              ),
                                              Align(
                                                alignment: Alignment.bottomRight,
                                                child: Padding(
                                                  padding: const EdgeInsets.only(right:8.0),
                                                  child: SizedBox(
                                                    width: 80.0,
                                                    height:40,
                                                    child: RaisedButton(
                                                      onPressed: () {
                                                        // setState(() {
                                                        //   if(complainProvided){
                                                        //     _complain.clear();
                                                        //     complainProvided=false;
                                                        //     Navigator.of(context).pop();
                                                        //     Toast.show("Complain editted", context,
                                                        //         duration: Toast.LENGTH_LONG,
                                                        //         gravity: Toast.BOTTOM);
                                                        //   }
                                                        //   else
                                                        //   {
                                                        //     Toast.show("Complain Missing", context,
                                                        //         duration: Toast.LENGTH_LONG,
                                                        //         gravity: Toast.BOTTOM);
                                                        //   }
                                                        // });
                                                        Navigator.of(context).pop();
                                                        Toast.show("Complain editted", context,
                                                            duration: Toast.LENGTH_LONG,
                                                            gravity: Toast.BOTTOM);
                                                      },
                                                      child: Text(
                                                        "Edit",
                                                        style: TextStyle(color: Colors.white),
                                                      ),
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            },



                          )
                      ),
                    ),
                    Expanded(
                      flex:5,
                      child: Container(
                          child: FlatButton(
                              child: Icon(Icons.delete,size: 20,color: Colors.black,),
                              onPressed: (){
                                showDialog(context: context, builder: (BuildContext context) {
                                  return AlertDialog (
                                    title: Text("AlertDialog"),
                                    content: Text("Deleting will deletes complain.would you like to still delete it?"),
                                    actions: [
                                      new FlatButton(
                                          child: Text("Cancel",style: TextStyle(color: Colors.black),),
                                          onPressed:  () {
                                            Navigator.of(context).pop();}),
                                      new FlatButton(
                                        child: Text("Delete",style: TextStyle(color: Colors.black),),
                                        onPressed:  () {
                                          Navigator.of(context).pop();
                                          Toast.show("Complain deleted", context,
                                              duration: Toast.LENGTH_LONG,
                                              gravity: Toast.BOTTOM);
                                        },
                                      )
                                    ],
                                  );
                                });
                              }
                          )
                      ),
                    ),
                  ],
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
        ),
      ),
    );
  }
}

