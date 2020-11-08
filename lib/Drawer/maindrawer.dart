import 'package:flutter/material.dart';

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
