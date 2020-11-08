import 'package:flutter/material.dart';
import 'package:societyworker/home_screens/homescreen.dart';
import 'package:societyworker/Detail_screens/updatedetails.dart';



class mainDrawer extends StatefulWidget {
  @override
  _mainDrawerState createState() => _mainDrawerState();
}

class _mainDrawerState extends State<mainDrawer> {
  int pageNo;

  @override
  void initState() {
    super.initState();
    pageNo = 1;
  }
  getPage() {
    if(pageNo == 1)
      return homeScreen();
    else if(pageNo == 2)
      return updateDetails();

    }




  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[

            DrawerHeader(
              child:Column(
              children:[
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  new updateDetails()));
                  },
                 child: Container(
                 width:100,
                 height: 100,
                 decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image:NetworkImage('https://1z1euk35x7oy36s8we4dr6lo-wpengine.netdna-ssl.com/wp-content/uploads/2019/11/numze-e1572781662446.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
                ),
                Text(
                'Name',
                style: TextStyle(color: Colors.white),
                textAlign:TextAlign.center,
              ),
          ],

              ),

              decoration: BoxDecoration(
                color: Colors.black,

              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                //Navigator.pop(context);
              //  Navigator.push(context, MaterialPageRoute(builder: (context) =>  new updateDetails()));
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text(
                'About',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {

              },
            ),
          ],
        ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
 /* getPage() {
    switch (pageNo)
      case 1:
        return homeScreen();
          break;
        case 2:
        return AboutPage();
        break;

    }
  */
/*import 'package:flutter/material.dart';

class mainDrawer extends StatefulWidget {
  @override
  _mainDrawerState createState() => _mainDrawerState();
}

class _mainDrawerState extends State<mainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,

        children:[
          DrawerHeader(

            child: Column(

              children:[
                Container(
                  width:100,
                height: 100,
                decoration: BoxDecoration(

                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image:NetworkImage('https://1z1euk35x7oy36s8we4dr6lo-wpengine.netdna-ssl.com/wp-content/uploads/2019/11/numze-e1572781662446.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                ),
                Text(
                  'Name',
                  textAlign: TextAlign.center,
                ),
              ],
            ),

           ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
    ],
    ),
    );

  }
}
*/
