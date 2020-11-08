import 'package:flutter/material.dart';
import 'package:societyworker/setup_screens/login.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: new SplashScreenPage(),
    );
  }
}



class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      routeName: '/',
      navigateAfterSeconds:  MyHomePage(),
      title: new Text('Worker Screen',textScaleFactor: 2.2,),
      image: new Image.asset('images/worker.jpg'),
      loadingText: Text("Loading"),
      photoSize: 170.0,
      loaderColor: Colors.black,
    );
  }
}




class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new LoginScreen() ,
    );
  }
}