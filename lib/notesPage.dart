import 'package:flutter/material.dart';
import 'package:csea_test1/homePage.dart';
import 'package:csea_test1/newsFeed.dart';
import 'package:csea_test1/quizPage.dart';
import 'package:csea_test1/profilePage.dart';
import 'package:csea_test1/subjectsPage.dart';
import 'package:bmnav/bmnav.dart' as bmnav;

class NotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CSEA APP",
      home: notesGridPage(),
    );
  }
}

class notesGridPage extends StatefulWidget {
  @override
  _notesGridPageState createState() => _notesGridPageState();
}

class _notesGridPageState extends State<notesGridPage> {
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
        body: gridBody(context),
      ),
    );
  }
}

Container gridBody(context) => Container(
  decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage("images/profile_background.jpg"),
          fit: BoxFit.cover,
      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop))),
      child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
          padding: EdgeInsets.all(15.0),
          children: <GridTile>[
            new GridTile(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (BuildContext context, Animation<double> animation,
                              Animation<double> secondaryAnimation) {
                            return SubListPage();
                          },
                          transitionsBuilder: (BuildContext context,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation,
                              Widget child) {
                            return SlideTransition(
                              position: new Tween<Offset>(
                                begin: const Offset(-1.0, -1.0),
                                end: Offset.zero,
                              ).animate(animation),
                              child: new SlideTransition(
                                position: new Tween<Offset>(
                                  begin: Offset.zero,
                                  end: const Offset(-1.0, -1.0),
                                ).animate(secondaryAnimation),
                                child: child,
                              ),
                            );
                          },
                        ));
                  },
                  child: Container(
              child: Center(
                    child: Text(
                      "1st Year",
                      style: TextStyle(
                        fontFamily: 'LemonMilk',
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    )),
              decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                color: Colors.redAccent.withOpacity(0.7)
              ),
            ),
                )),
            new GridTile(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (BuildContext context, Animation<double> animation,
                              Animation<double> secondaryAnimation) {
                            return SubListPage();
                          },
                          transitionsBuilder: (BuildContext context,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation,
                              Widget child) {
                            return SlideTransition(
                              position: new Tween<Offset>(
                                begin: const Offset(1.0, -1.0),
                                end: Offset.zero,
                              ).animate(animation),
                              child: new SlideTransition(
                                position: new Tween<Offset>(
                                  begin: Offset.zero,
                                  end: const Offset(1.0, -1.0),
                                ).animate(secondaryAnimation),
                                child: child,
                              ),
                            );
                          },
                        ));

                  },
                  child: Container(
              child: Center(
                    child: Text(
                      "2nd Year",
                      style: TextStyle(
                        fontFamily: 'LemonMilk',
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    )),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                color: Colors.deepPurpleAccent.withOpacity(0.7)
              ),
            ),
                )),
            new GridTile(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (BuildContext context, Animation<double> animation,
                              Animation<double> secondaryAnimation) {
                            return SubListPage();
                          },
                          transitionsBuilder: (BuildContext context,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation,
                              Widget child) {
                            return SlideTransition(
                              position: new Tween<Offset>(
                                begin: const Offset(-1.0, 1.0),
                                end: Offset.zero,
                              ).animate(animation),
                              child: new SlideTransition(
                                position: new Tween<Offset>(
                                  begin: Offset.zero,
                                  end: const Offset(-1.0, 1.0),
                                ).animate(secondaryAnimation),
                                child: child,
                              ),
                            );
                          },
                        ));
                  },
                  child: Container(
              child: Center(
                    child: Text(
                      "3rd Year",
                      style: TextStyle(
                        fontFamily: 'LemonMilk',
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    )),
              decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
              color: Colors.blueGrey.withOpacity(0.7)
              ),
            ),
                )),
            new GridTile(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (BuildContext context, Animation<double> animation,
                              Animation<double> secondaryAnimation) {
                            return SubListPage();
                          },
                          transitionsBuilder: (BuildContext context,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation,
                              Widget child) {
                            return SlideTransition(
                              position: new Tween<Offset>(
                                begin: const Offset(1.0, 1.0),
                                end: Offset.zero,
                              ).animate(animation),
                              child: new SlideTransition(
                                position: new Tween<Offset>(
                                  begin: Offset.zero,
                                  end: const Offset(1.0, 1.0),
                                ).animate(secondaryAnimation),
                                child: child,
                              ),
                            );
                          },
                        ));
                  },
                  child: Container(
              child: Center(
                    child: Text(
                      "4th year",
                      style: TextStyle(
                        fontFamily: 'LemonMilk',
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    )),
              decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  //image: DecorationImage(image: AssetImage("images/1234.jpg"),
                    //  fit: BoxFit.cover)),
color: Colors.black.withOpacity(0.7)
),
                )),
            )]),
    );

final topAppBar = new AppBar(
  elevation: 0.1,
  automaticallyImplyLeading: false,
  backgroundColor: Colors.black,
  title: Text(
    "Notes",
    style: new TextStyle(
      fontFamily: 'LemonMilk',
      fontSize: 20,
    ),
  ),
);

bmnav.BottomNav bottom_nav_bar(context) => bmnav.BottomNav(
      index: 3,
      color: Colors.black,
      onTap: (index) {
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
