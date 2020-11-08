import 'package:flutter/material.dart';
import 'package:societyworker/Drawer/maindrawer.dart';


class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('home'),
        backgroundColor: Colors.black,
      ),
        drawer:mainDrawer()
    );

  }

}
