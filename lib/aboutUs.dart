import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class AboutUs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "CESA APP",
      debugShowCheckedModeBanner: false,
      home: AboutUsPage(),
    );
  }

}

class AboutUsPage extends StatefulWidget {
  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
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
  title: Text("About Us",
    style: new TextStyle(
      fontFamily: 'LemonMilk',
      fontSize: 20,
    ),
  ),

);

final pageBody = Container(
decoration: BoxDecoration(
    image: DecorationImage(image: AssetImage("images/profile_background.jpg"),
    fit: BoxFit.cover,
colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop))
),

    child:  ListView(
        children: <Widget>[
      Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
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
          "The Department of Computer Science and Engineering is by far the most sought after branch that exists, "+
              "mainly because of its limitless and exponential growth, beyond all comparison. The beauty of this department"+
              " is in its logical and out of the box approach and we, the CSE Association, reflect the same."+
            "We are introducing a brand new visual identity that showcases the best there is to offer in our department. "+
          "Stay tuned to be amazed by the mind-boggling activities coming your way!",
          style: TextStyle(fontSize: 20, fontFamily: 'LemonMilk',),
          textAlign: TextAlign.center,

        ),
          ],

        ),
      )
)
]
)
      );

