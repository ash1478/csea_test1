import 'package:flutter/material.dart';
import 'package:csea_test1/eventDetails.dart';
import 'package:csea_test1/profilePage.dart';
import 'package:bmnav/bmnav.dart' as bmnav;
import 'package:csea_test1/newsFeed.dart';
import 'package:csea_test1/quizPage.dart';
import 'package:csea_test1/notesPage.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Sample App',
      home: new ListPage(title: 'Events'),
      debugShowCheckedModeBanner: false,

    );
  }
}


class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  Future<bool> _backPressed()
  {
    return showDialog(context: context,
        builder: (context)=>AlertDialog(

          title: Text("Do you want to exit?",style: TextStyle(fontFamily: "LemonMilk"),),
          actions: <Widget>[
            FlatButton(
              child: Text("NO",style: TextStyle(fontFamily: "LemonMilk"),),
              onPressed: (){
                Navigator.pop(context,false);
              },
            ),
            FlatButton(
              child: Text("Yes",style: TextStyle(fontFamily: "LemonMilk"),),
              onPressed: (){
                Navigator.pop(context,true);
              },
            ),
          ],
        )
    );

  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _backPressed,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: topAppBar,
        body: eventBody(context),
        bottomNavigationBar: bottom_nav_bar(context),

      ),
    );

  }
  final topAppBar = new AppBar(
    elevation: 0.1,
    backgroundColor: Colors.black,
    title: Text("Events",
    style: new TextStyle(
      fontFamily: 'LemonMilk',
      fontSize: 20,
    ),
    ),

  );
}

bmnav.BottomNav bottom_nav_bar(context) => bmnav.BottomNav(
  index: 1,
  color: Colors.black,onTap:(index){
    if(index == 0){
      Navigator.pushReplacement(context,
          PageRouteBuilder(
            pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
              return FeedPage();
            },
            transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
              return SlideTransition(
                position: new Tween<Offset>(
                  begin: const Offset(-1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: new SlideTransition(
                  position: new Tween<Offset>(
                    begin: Offset.zero,
                    end: const Offset(-1.0, 0.0),
                  ).animate(secondaryAnimation),
                  child: child,
                ),
              );
            },
          )
      );


    }

    if(index == 2){
      Navigator.pushReplacement(context,
          PageRouteBuilder(
            pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
              return QuizPage();
            },
            transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
              return SlideTransition(
                position: new Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: new SlideTransition(
                  position: new Tween<Offset>(
                    begin: Offset.zero,
                    end: const Offset(1.0, 0.0),
                  ).animate(secondaryAnimation),
                  child: child,
                ),
              );
            },
          )
      );


    }


    if(index == 3){
      Navigator.pushReplacement(context,
          PageRouteBuilder(
            pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
              return NotesPage();
            },
            transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
              return SlideTransition(
                position: new Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: new SlideTransition(
                  position: new Tween<Offset>(
                    begin: Offset.zero,
                    end: const Offset(1.0, 0.0),
                  ).animate(secondaryAnimation),
                  child: child,
                ),
              );
            },
          )
      );


    }

    if(index == 4){
      Navigator.pushReplacement(context,
          PageRouteBuilder(
            pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
              return ProfilePage();
            },
            transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
              return SlideTransition(
                position: new Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: new SlideTransition(
                  position: new Tween<Offset>(
                    begin: Offset.zero,
                    end: const Offset(1.0, 0.0),
                  ).animate(secondaryAnimation),
                  child: child,
                ),
              );
            },
          )
      );


    }

} ,
  iconStyle: bmnav.IconStyle(
      size: 30.0,
      onSelectColor: Colors.yellow,
      color: Colors.white,
      onSelectSize: 30.0

  ),
  labelStyle: bmnav.LabelStyle(textStyle: new TextStyle(fontFamily: 'LemonMilk',fontSize: 12,color: Colors.white,),
      onSelectTextStyle: new TextStyle(fontFamily: 'LemonMilk',fontSize: 12,color: Colors.yellow)),
  items: [
    bmnav.BottomNavItem(Icons.event_note,label: "Feed"),
    bmnav.BottomNavItem(Icons.event,label: "Events"),
    bmnav.BottomNavItem(Icons.edit,label: "Quizzes"),
    bmnav.BottomNavItem(Icons.insert_drive_file, label: "Notes"),
    bmnav.BottomNavItem(Icons.person,label: "Profile")
  ],
);



Container eventBody(context) => new Container(

  decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage("images/profile_background.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.white, BlendMode.dstATop))
  ),
  child: ListView.builder(

      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemExtent: 200,
      itemCount: 10,

      itemBuilder: (BuildContext context,int index)
      {
        return eventCard(context);
      }
  ),
);

Container eventCard(context) => new Container(

  margin: new EdgeInsets.symmetric(vertical: 7.0,horizontal: 30.0),
  child: new Container(
    decoration: BoxDecoration(
      borderRadius: new BorderRadius.circular(15),
        image: DecorationImage(image: AssetImage("images/abcd.png"),
          fit: BoxFit.cover,),
      border: new Border.all(color: Colors.black,width: 4),
    ),
      child: Stack(
        children: <Widget>[
          Positioned(top: 100,
              child: eventCardContainer(context))
        ],
      ),
  ),
)
;

Container eventCardContainer(context) => Container(
height: 90,
  width: MediaQuery.of(context).size.width-68,

  decoration: BoxDecoration(
    color: Colors.black.withOpacity(0.3),
  ),
  child: new Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: new Row(
          children: <Widget>[
            new Text("CSEA launches new App",style: new TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'LemonMilk',
            ),)
          ],
        ),
      )
    ],
  ),
);