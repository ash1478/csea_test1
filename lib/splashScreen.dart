import 'package:flutter/material.dart';
import 'dart:async';
import 'package:csea_test1/loginPage.dart';


void main() => runApp(Start());

class Start extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CSEA APP",
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
    );
  }
}

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, _navigate);
  }



  @override
  void initState() {
    super.initState();
    startTime();
  }


  _navigate() {
    Navigator.pushReplacement(context,
        new MaterialPageRoute(builder: (context) => new loginPage())
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Image.asset("images/csea_logo.png",height: 150,width: 150,),
        ),
      ),
    );
  }


}
