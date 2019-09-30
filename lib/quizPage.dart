import 'package:flutter/material.dart';
import 'package:csea_test1/homePage.dart';
import 'package:csea_test1/profilePage.dart';
import 'package:csea_test1/newsFeed.dart';
import 'package:csea_test1/notesPage.dart';
import 'package:bmnav/bmnav.dart' as bmnav;
import 'package:csea_test1/quizGridPage.dart';

class QuizPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "CSEA APP",
      debugShowCheckedModeBanner: false,
      home: QuizTopicView(),
    );
  }

}

class QuizTopicView extends StatefulWidget{

@override
  _QuizTopicViewState createState() => _QuizTopicViewState();


}

class _QuizTopicViewState extends State<QuizTopicView>{

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
    // TODO: implement build
    return WillPopScope(
      onWillPop: _backPressed,
      child: Scaffold(
        appBar: topAppBar,
        bottomNavigationBar: bottom_nav_bar(context),
        body: topicBody(context),
      ),
    );
  }

}


Container topicBody(context) => Container(padding: EdgeInsets.symmetric(vertical: 50),
  decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage("images/profile_background.jpg"),
          fit: BoxFit.cover)),
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemExtent: MediaQuery.of(context).size.width*0.75,
    padding: EdgeInsets.only(right: 50),
    itemCount: 10,
    itemBuilder: (BuildContext context, int index){
      return topicCont(context);
    }
  ),
);


Container topicCont(context) =>  Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
  child: Stack(
      children: <Widget>[
  Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            image: DecorationImage(image: AssetImage("images/motherboard_pic.jpg"),
                fit: BoxFit.cover)
        ),
),
  GestureDetector(onTap: (){
    Navigator.push(context,
        PageRouteBuilder(
          pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
            return QuizGridPage();
          },
          transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
            return SlideTransition(
              position: new Tween<Offset>(
                begin: const Offset(0.0, 1.0),
                end: Offset.zero,
              ).animate(animation),
              child: new SlideTransition(
                position: new Tween<Offset>(
                  begin: Offset.zero,
                  end: const Offset(0.0, 1.0),
                ).animate(secondaryAnimation),
                child: child,
              ),
            );
          },
        )
    );
  },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.black.withOpacity(0.5)
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("DATA STRUCTURES",
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 30,
            fontFamily: 'LemonMilk',

            color: Colors.white
          ),),
        ),
      ),
    ),
  )

]
)
  );




final topAppBar = new AppBar(
  elevation: 0.1,
  backgroundColor: Colors.black,
  title: Text("Quizzes",
    style: new TextStyle(
      fontFamily: 'LemonMilk',
      fontSize: 20,
    ),
  ),

);


bmnav.BottomNav bottom_nav_bar(context) => bmnav.BottomNav(

  index: 2,color: Colors.black,
  onTap:(index){
    if(index == 1){
      Navigator.pushReplacement(context,
          PageRouteBuilder(
            pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
              return HomePage();
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
    onSelectSize: 30.0,
  ),
  labelStyle: bmnav.LabelStyle(textStyle: new TextStyle(fontFamily: 'LemonMilk',fontSize: 12,color: Colors.white,),
      onSelectTextStyle: new TextStyle(fontFamily: 'LemonMilk',fontSize: 12,color: Colors.yellow)),
  items: [
    bmnav.BottomNavItem(Icons.event_note,label: "FEED"),
    bmnav.BottomNavItem(Icons.event,label: "Events"),
    bmnav.BottomNavItem(Icons.edit,label:"Quizzes"),
    bmnav.BottomNavItem(Icons.insert_drive_file, label: "Notes"),
    bmnav.BottomNavItem(Icons.person,label: "Profile")
  ],
);
