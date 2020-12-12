import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'house_hold_info.dart';
import 'package:toast/toast.dart';


var blockSearch;

class houseHolds extends StatelessWidget {
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
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: houseHoldsView(),
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

class _houseHoldsViewState extends State<houseHoldsView> {
  @override
  Widget build(BuildContext context) {
    var blocks = [
      "Ka1 Block",
      "Ka2 Block",
      "Ka3 Block",
      "Ka4 Block",
      "Ka5 Block",
      "Ka6 Block",
      "Ka7 Block"
    ];
    var myGridView = new GridView.builder(
      itemCount: blocks.length,
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
                  blocks[index],
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => houseHoldInfo()));
            },
          ),
        );
      },
    );
    return myGridView;
  }
}
