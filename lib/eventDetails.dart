import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: new Column(
          children: <Widget>[
            topData(context),
            botData(context)
          ],
        )
    );
  }
  Stack topData(context) =>new Stack(
    children: <Widget>[
      new Container(
          padding: EdgeInsets.only(left: 10.0),
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("images/motherboard_pic.jpg"),
              fit: BoxFit.cover,
            ),
          )
      ),
      Positioned(
        top: 250,
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.6)),
          child: topContentText,
        ),
      ),
      Container(
        decoration: BoxDecoration(color: Colors.black.withOpacity(0.4)),
        height: 80,
        width: MediaQuery.of(context).size.width,

          child: IconButton(
            alignment: Alignment.centerLeft,
            icon: Icon(Icons.arrow_back, color: Colors.white),

            onPressed: () {
              Navigator.pop(context);
            },

          ),
        ),

    ],
  );


  final topContentText = new Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      new Text("CSEA launches new app!",
      style: new TextStyle(
        color: Colors.white,
        fontSize: 25.0,
        fontFamily: 'LemonMilk'
      ),)
    ],
  );

Container botData(context) => new Container(
  padding: EdgeInsets.all(15.0),
  child: new Column(
    children: <Widget>[
      new Text("I am Ashwin and i am working in this not so big yet, tiresome project!!!!!! "
          "I dont know when i'll complete this but soon enough i suppose!!! Ok!"
          "  got to go! lots of work to do!!! bye.",
      style: new TextStyle(
        fontSize: 15.0,
      ),)
    ],
  ),
);




}

