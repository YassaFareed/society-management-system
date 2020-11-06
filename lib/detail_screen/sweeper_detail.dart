import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';



class sweeperDetail extends StatefulWidget {
  @override
  _sweeperDetailState createState() => _sweeperDetailState();
}

class _sweeperDetailState extends State<sweeperDetail> {
  var index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  CarouselSlider(
        items: <Widget>[
          SweeperWidget("https://1z1euk35x7oy36s8we4dr6lo-wpengine.netdna-ssl.com/wp-content/uploads/2019/11/numze-e1572781662446.jpg"
              ,"Ali Muhammad","Y/812 Karimabad Colony","03999876544","42101-8765443-1","Alimuhammadmuradali@gmail.com","Sweeper","9am-9pm","20000"),

          SweeperWidget("https://1z1euk35x7oy36s8we4dr6lo-wpengine.netdna-ssl.com/wp-content/uploads/2019/11/numze-e1572781662446.jpg"
              ,"Hassan","Y/001 Karimabad Colony","03987654368","42103-87783633-0","Hassanqa13@gmail.com","Sweeper","9pm-9am","15000"),

          SweeperWidget("https://1z1euk35x7oy36s8we4dr6lo-wpengine.netdna-ssl.com/wp-content/uploads/2019/11/numze-e1572781662446.jpg"
              ,"Yassa","Y/456 Karimabad Colony","0383947468","421473-8749363-8","yassafareed@gmail.com","Sweeper","3pm-3am","25000"),
          // Column(
          //   children: <Widget>[
          //     Material(
          //       elevation: 10.0,
          //       child: Card(
          //         elevation: 10.0,
          //         borderOnForeground: true,
          //         child: Image.network('https://1z1euk35x7oy36s8we4dr6lo-wpengine.netdna-ssl.com/wp-content/uploads/2019/11/numze-e1572781662446.jpg'),
          //       ),
          //     ),
          //     Container(
          //       height: MediaQuery.of(context).size.height*0.4,
          //       width: MediaQuery.of(context).size.width,
          //       margin: EdgeInsets.only(top: 30.0),
          //       child: Card(
          //         elevation: 30.0,
          //         child: Column(
          //           children: <Widget>[
          //             Text("HELLO"),
          //             Text("HELLO"),
          //             Text("HELLO"),
          //             Text("HELLO"),
          //             Text("HELLO"),
          //             Text("HELLO"),
          //             Text("HELLO"),
          //             Text("HELLO"),
          //             Text("HELLO"),
          //             Text("HELLO"),
          //             Text("HELLO"),
          //             Text("HELLO"),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          // ),

        ],
        options: CarouselOptions(
          disableCenter: true,
          height: double.infinity,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          reverse: false,
          onPageChanged: (indexx , sda){
            setState(() {
              index = indexx;
              print(indexx);
            });
          },
        ),
      ),
    );
  }
}


class SweeperWidget extends StatelessWidget {

  final url;
  final name;
  final address;
  final phone;
  final CNIC;
  final email;
  final profession;
  final timing;
  final salary;

  SweeperWidget(this.url,this.name,this.address,this.phone,this.CNIC,this.email,this.profession,this.timing,this.salary);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Material(
          elevation: 10.0,

          child: Card(
            elevation: 10.0,
            borderOnForeground: true,
            child: Image.network(url),
          ),
        ),
        Container(

          height: MediaQuery.of(context).size.height*0.45,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 30.0),
          child: Card(
            elevation: 30.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
              side: new BorderSide(color: Colors.grey, width: 2.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0,8,8,8),
                  child: RichText(text: TextSpan(
                      style:DefaultTextStyle.of(context).style,
                      children:<TextSpan>[
                        TextSpan(text: 'Name: ', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                        TextSpan(text: name,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,),),
                      ]
                  ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0,8,8,8),
                  child: RichText(text: TextSpan(
                      style:DefaultTextStyle.of(context).style,
                      children:<TextSpan>[
                        TextSpan(text: 'Adress: ', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                        TextSpan(text: address,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,),),
                      ],
                  ),
                    maxLines: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0,8,8,8),
                  child: RichText(text: TextSpan(
                    style:DefaultTextStyle.of(context).style,
                    children:<TextSpan>[
                      TextSpan(text: 'Phone Number: ', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                      TextSpan(text: phone,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,),),
                    ],
                  ),
                    maxLines: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0,8,8,8),
                  child: RichText(text: TextSpan(
                    style:DefaultTextStyle.of(context).style,
                    children:<TextSpan>[
                      TextSpan(text: 'CNIC: ', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                      TextSpan(text: CNIC,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,),),
                    ],
                  ),
                    maxLines: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0,8,8,8),
                  child: RichText(text: TextSpan(
                    style:DefaultTextStyle.of(context).style,
                    children:<TextSpan>[
                      TextSpan(text: 'Email: ', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                      TextSpan(text: email,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,),),
                    ],
                  ),
                    maxLines: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0,8,8,8),
                  child: RichText(text: TextSpan(
                    style:DefaultTextStyle.of(context).style,
                    children:<TextSpan>[
                      TextSpan(text: 'Profession: ', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                      TextSpan(text: profession,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,),),
                    ],
                  ),
                    maxLines: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0,8,8,8),
                  child: RichText(text: TextSpan(
                    style:DefaultTextStyle.of(context).style,
                    children:<TextSpan>[
                      TextSpan(text: 'Work Timing: ', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                      TextSpan(text: timing,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,),),
                    ],
                  ),
                    maxLines: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0,8,8,8),
                  child: RichText(text: TextSpan(
                    style:DefaultTextStyle.of(context).style,
                    children:<TextSpan>[
                      TextSpan(text: 'Salary: ', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                      TextSpan(text: salary,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,),),
                    ],
                  ),
                    maxLines: 2,
                  ),
                ),

              ],
            ),
          ),
        ),
      ],
    );
  }
}