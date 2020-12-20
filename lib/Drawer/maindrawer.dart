import 'package:flutter/material.dart';
import 'package:societyworker/Detail_screens/update_Details.dart';
import 'package:societyworker/Drawer/my_complain.dart';
import 'package:societyworker/Drawer/addcomplain.dart';
import 'package:societyworker/constants/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';


class Main_Drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(30),
            color: Colors.black,
            child: Center(
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      // print("Container was tapped");
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  new update_Details()));
                    },
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      margin: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image:NetworkImage('https://1z1euk35x7oy36s8we4dr6lo-wpengine.netdna-ssl.com/wp-content/uploads/2019/11/numze-e1572781662446.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),

                  Text(user.name,style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text(
              "Add Complain",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  new addComplain()));
            },
          ),
          ListTile(
            leading: Icon(Icons.all_out),
            title: Text(
              "My Complains",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  new myComplain()));
            },
          ),

          ListTile(
            leading: Icon(Icons.all_out),
            title: Text(
              "Sign Out",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class mainDrawer extends StatefulWidget {
  @override
  _mainDrawerState createState() => _mainDrawerState();
}

class _mainDrawerState extends State<mainDrawer> {


  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[

            DrawerHeader(
              child:Column(
              children:[

                Container(
                 width:100,
                 height: 100,
                  margin: EdgeInsets.all(20.0),
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
              leading: Icon(Icons.add),
              title: Text(
                'Add Complain',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
               Navigator.push(context, MaterialPageRoute(builder: (context) =>  new addComplain()));
              },
            ),

            ListTile(
              leading: Icon(Icons.add),
              title: Text(
                'My Complain',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  new myComplain()));
              },
            ),

            ListTile(
              leading: Icon(Icons.all_out),
              title: Text(
                'Signout',
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
