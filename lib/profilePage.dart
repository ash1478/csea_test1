import 'package:flutter/material.dart';
import 'package:bmnav/bmnav.dart' as bmnav;
import 'package:csea_test1/newsFeed.dart';
import 'package:csea_test1/homePage.dart';
import 'package:csea_test1/settingsPage.dart';
import 'package:csea_test1/quizPage.dart';
import 'package:csea_test1/notesPage.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:csea_test1/imagePickerGallery.dart';
class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CSEA APP",
      debugShowCheckedModeBanner: false,
      home: ProfilePageView(),
    );
  }
}

class ProfilePageView extends StatefulWidget {
  _ProfilePageViewState createState() => _ProfilePageViewState();
}

class _ProfilePageViewState extends State<ProfilePageView> {
  String name;
  String reg;

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
        appBar: topAppBar(context),
        bottomNavigationBar: bottom_nav_bar(context),
        body: pageBody(context,name,reg),
      ),
    );
  }
}



bmnav.BottomNav bottom_nav_bar(context) => bmnav.BottomNav(
      index: 4,
      color: Colors.black,
      onTap: (index) {
        if (index == 0) {
          Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) {
                  return FeedPage();
                },
                transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) {
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
              ));
        }
        if (index == 1) {
          Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) {
                  return HomePage();
                },
                transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) {
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
              ));
        }
        if (index == 2) {
          Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) {
                  return QuizPage();
                },
                transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) {
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
              ));
        }
        if (index == 3) {
          Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) {
                  return NotesPage();
                },
                transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) {
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
              ));
        }
      },
      iconStyle: bmnav.IconStyle(
        size: 30.0,
        onSelectColor: Colors.yellow,
        color: Colors.white,
        onSelectSize: 30.0,
      ),
      labelStyle: bmnav.LabelStyle(
          textStyle: new TextStyle(
            fontFamily: 'LemonMilk',
            fontSize: 12,
            color: Colors.white,
          ),
          onSelectTextStyle: new TextStyle(
              fontFamily: 'LemonMilk', fontSize: 12, color: Colors.yellow)),
      items: [
        bmnav.BottomNavItem(Icons.event_note, label: "FEED"),
        bmnav.BottomNavItem(Icons.event, label: "Events"),
        bmnav.BottomNavItem(Icons.edit, label: "Quizzes"),
        bmnav.BottomNavItem(Icons.insert_drive_file, label: "Notes"),
        bmnav.BottomNavItem(Icons.person, label: "Profile")
      ],
    );

AppBar topAppBar(context) => new AppBar(
  elevation: 0.1,
  actions: <Widget>[
    IconButton(
      icon: Icon(Icons.settings,size: 30,color: Colors.white,),
      onPressed: (){
        Navigator.push(context,
            new MaterialPageRoute(builder: (context) => new SettingsPageView()));
      },
    )
  ],
  automaticallyImplyLeading: false,
  backgroundColor: Colors.black,
  title: Text(
    "Profile",
    style: new TextStyle(
      fontFamily: 'LemonMilk',
      fontSize: 20,
    ),
  ),
);

Container pageBody(context,name,reg) => Container(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/profile_background.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6), BlendMode.dstATop))),
        child: Center(
          child: Column(
            children: <Widget>[
              GalleryPage(),
              Text(
                name,
                style: TextStyle(fontSize: 30, fontFamily: 'LemonMilk'),
              ),
              Text(
                reg,
                style: TextStyle(fontSize: 20, fontFamily: 'LemonMilk'),
              ),
              Text(
                "B.TECH - CSE",
                style: TextStyle(fontSize: 20, fontFamily: 'LemonMilk'),
              ),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(height: 50,
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(vertical: 15,horizontal: 70),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: new Text("Quiz Wins : ",
                          style: new TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontFamily: 'LemonMilk'
                          ),
                        )

                    ),
                  ),
                ],
              ),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(height: 50,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.symmetric(horizontal: 70),
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: new Text("Event Tickets ",
                          style: new TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontFamily: 'LemonMilk'
                          ),
                        )

                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );


