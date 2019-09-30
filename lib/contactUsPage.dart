import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class ContactUs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "CSEA APP",
      debugShowCheckedModeBanner: false,
      home: ContactUSPage(),
    );
  }
}

class ContactUSPage extends StatefulWidget {
  @override
  _ContactUSPageState createState() => _ContactUSPageState();
}

class _ContactUSPageState extends State<ContactUSPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar,
      body: pageBody,
    );
  }
}
final topAppBar = new AppBar(
  elevation: 0.1,
  automaticallyImplyLeading: true,
  backgroundColor: Colors.black,
  title: Text("Contact Us",
    style: new TextStyle(
      fontFamily: 'LemonMilk',
      fontSize: 20,
    ),
  ),

);

final pageBody = new Container(
  decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage("images/profile_background.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.6), BlendMode.dstATop))),

            child: Center(
              child: Column(
                children: <Widget>[
                  AvatarGlow(
                    glowColor: Colors.black,
                    endRadius: 120.0,
                    duration: Duration(milliseconds: 2000),
                    repeat: true,
                    showTwoGlows: true,
                    repeatPauseDuration: Duration(milliseconds: 100),
                    child: Material(
                      elevation: 8.0,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        child: Image.asset(
                          'images/csea_logo.png',
                          height: 140,
                        ),
                        radius: 60.0,
                      ),
                    ),
                  ),
                  Text(
                    "SECRETARY:",
                    style: TextStyle(fontSize: 20, fontFamily: 'LemonMilk'),
                  ),
                  Text(
                    "SECRETARY NUMBER",
                    style: TextStyle(fontSize: 20, fontFamily: 'LemonMilk'),
                  ),
                  Text(
                    "PUBLCITY HEAD:",
                    style: TextStyle(fontSize: 20, fontFamily: 'LemonMilk'),
                  ),
                  Text(
                    "PUBLCITY HEAD NUMBER",
                    style: TextStyle(fontSize: 20, fontFamily: 'LemonMilk'),
                  ),
                ],
              ),
            ),
);
