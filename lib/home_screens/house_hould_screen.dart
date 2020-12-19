import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:societyworker/services/resdent.dart';
import 'house_hold_info.dart';

var blockSearch;

class houseHolds extends StatefulWidget {

  @override
  _houseHoldsState createState() => _houseHoldsState();
}

class _houseHoldsState extends State<houseHolds> {

  TextEditingController _block = TextEditingController();
  bool blockProvided = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        //padding: EdgeInsets.symmetric(vertical: 20),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [Colors.black, Colors.black])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Center(
                      child: Text(
                        "Choose Block",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: houseHoldsView(),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class houseHoldsView extends StatefulWidget {
  @override
  _houseHoldsViewState createState() => _houseHoldsViewState();
}
Set blocks = {};
class _houseHoldsViewState extends State<houseHoldsView> {

  int i;
  TextEditingController _blocknew = TextEditingController();
  bool blocknewProvided = false;

  @override
  void initState(){
    super.initState();
//    ResidentServices().getByBuildings();
  }

  @override
  Widget build(BuildContext context) {


    var block = blocks.toList();
    var myGridView = new GridView.builder(
      itemCount: block.length,
      scrollDirection: Axis.vertical,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (2.5 / 1),
      ),
      itemBuilder: (BuildContext context, int index) {

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            color: Colors.black,
            child: Container(
              margin:
              new EdgeInsets.only(left: 0, right: 0, top: 10, bottom: 10),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: new Text(
                  block[index],
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            onPressed: () async{

              ResidentServices().getAllBuildings(block[index]).then((value){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => houseHoldInfo()));
              });
            },


          ),
        );
      },
    );
    // var myListView = new ListView.builder(
    //   itemCount: blocks.length,
    //   itemBuilder: (BuildContext context, int index) {
    //     return Padding(
    //       padding: const EdgeInsets.all(10.0),
    //       child: Card(
    //         color: Colors.black,
    //         child: ListTile(
    //           title: new Text(
    //             blocks[index],
    //             style: TextStyle(color: Colors.white, fontSize: 20),
    //           ),
    //           trailing: Icon(
    //             Icons.more_vert,
    //             color: Colors.white,
    //           ),
    //           onTap: () {
    //             Navigator.push(context,
    //                 MaterialPageRoute(builder: (context) => houseHoldInfo()));
    //           },
    //         ),
    //       ),
    //     );
    //   },
    // );
    return myGridView;
  }
}
