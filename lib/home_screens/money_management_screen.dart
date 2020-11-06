import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:society_resident/constants/ui_constants.dart';
import 'package:toast/toast.dart';

class moneyManagement extends StatefulWidget {
  @override
  _moneyManagementState createState() => _moneyManagementState();
}

class _moneyManagementState extends State<moneyManagement> {


double _Currentprice = 0.0;
double _Earnedprice = 0.0;
double _Spendprice = 0.0;
double _Loanprice = 0.0;
TextEditingController _priceInput = TextEditingController();



  @override
  void initState() {
    super.initState();
  }


  void updatePrice(TextEditingController value,double current ,double earn, double spend , double loan)
  {
    
    _Currentprice = double.parse(value.text) + current;
    _Earnedprice = current + earn + double.parse(value.text);
  }



    
  _settingModalBottomSheet(BuildContext context) {

    return showModalBottomSheet(
        context: context,

        builder: (context) {


          return Container(
              decoration: new BoxDecoration(
                  color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(40.0))),
              child: new Wrap(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Enter The Price You Want To Contribute:",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: 
                    // text_input(_price,
                    //     'Enter Your Price', Icons.contact_mail, false),
                    TextFormField(
    controller: _priceInput,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly],
    decoration: InputDecoration(
      //labelText: 'Email',
      hintText: 'Enter Your Price',
      labelStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.grey,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding:
      EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.grey),
          gapPadding: 10),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.grey),
          gapPadding: 10),
      prefixIcon: Icon(
        Icons.attach_money,
        color: Colors.grey,
      ),

    ),
    obscureText: false,

  ),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: MaterialButton(
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 20),
                          child: Text(
                            "Select",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        onPressed: () {

                        setState(() {

                          updatePrice(_priceInput, _Currentprice, _Earnedprice ,_Spendprice, _Loanprice);
                        });
                        print(_priceInput.text);
                        _priceInput.clear();
                          Navigator.pop(context);
                          Toast.show("Price Contributed", context,
                              duration: Toast.LENGTH_LONG,
                              gravity: Toast.CENTER);
                        },

                      )
                  ),
                ],
              ));
        },);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(left: 18, right: 18, top: 22, bottom: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Account OverView:",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 18, right: 18, top: 22, bottom: 22),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black26,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          _Currentprice.toString(),
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          "Current Balance",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    RaisedButton(
                      onPressed: () {
                        _settingModalBottomSheet(context);
                       
                      },
                      elevation: 0,
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "+",
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      shape: CircleBorder(),
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 34,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "List Of Contributors",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Icon(
                    Icons.line_style,
                  ),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              Container(
                height: 200,
                color: Colors.grey,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 250,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.add,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text("User1"),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text("Contributed Money :"),
                                      Text("2000"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 250,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.add,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text("User1"),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text("Contributed Money :"),
                                      Text("2000"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 250,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.add,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text("User1"),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text("Contributed Money :"),
                                      Text("2000"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 250,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.add,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text("User1"),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text("Contributed Money :"),
                                      Text("2000"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Cash Flow:",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:10.0,right:10.0),
                child: Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.line_style,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Total Money Earned",style: TextStyle(fontSize: 16.0),),
                            Text(_Earnedprice.toString(),style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.line_style,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Total Money Spent",style: TextStyle(fontSize: 16.0),),
                            Text(_Spendprice.toString(),style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:10.0,right:10.0),
                child: Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.line_style,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(child:Text("Loan",style: TextStyle(fontSize: 16.0),)),
                            Text(_Loanprice.toString(),style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
