import 'package:flutter/material.dart';
import 'package:csea_test1/eventDetails.dart';
import 'package:csea_test1/homePage.dart';
import 'package:csea_test1/quizPage.dart';
import 'package:bmnav/bmnav.dart' as bmnav;
import 'package:csea_test1/notesPage.dart';
import 'package:csea_test1/profilePage.dart';




class FeedPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Sample App',
      home: new FeedListPage(title: 'Events'),
      debugShowCheckedModeBanner: false,

    );
  }
}



class FeedListPage extends StatefulWidget {
  FeedListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FeedListPageState createState() => _FeedListPageState();
}

class _FeedListPageState extends State<FeedListPage> {

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
        body: feedBody(context),
        bottomNavigationBar: bottom_nav_bar(context),

      ),
    );

  }

bmnav.BottomNav bottom_nav_bar(context) => bmnav.BottomNav(

index: 0,color: Colors.black,
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

  }
  final topAppBar = new AppBar(
    elevation: 0.1,
    automaticallyImplyLeading: false,
    backgroundColor: Colors.black,
    title: Text("Feed",
      style: new TextStyle(
        fontFamily: 'LemonMilk',
        fontSize: 20,
      ),
    ),

  );


Container feedBody(context) => new Container(
  decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage("images/profile_background.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.white, BlendMode.dstATop))

  ),
  child: ListView.builder(
    shrinkWrap: true,
    itemExtent: 120,
    scrollDirection: Axis.vertical,
    itemCount: 10,
    itemBuilder: (BuildContext context, int count){
      return feedCard(context);
    },
  ),
);





Container feedCard(context)  => new Container(
    decoration: BoxDecoration(
      borderRadius: new BorderRadius.circular(15),),
  margin: new EdgeInsets.symmetric(vertical: 7.0,horizontal: 15.0),
  child: Container(
    decoration: BoxDecoration(
      borderRadius: new BorderRadius.circular(15),

      gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [ 0.2, 0.9],
          colors: [Colors.white,Colors.blueGrey]
      ),
    ),
    child: Center(child: feedListTile(context)),
  ),
);


ListTile feedListTile(context)=> new ListTile(
  contentPadding: EdgeInsets.only( left: 15,right: 15),
  leading: Padding(
    padding: const EdgeInsets.only(bottom:0.0),
    child: Image(image: AssetImage("images/abcd.png"),
    fit: BoxFit.cover,),
  ),
  title: Text(
    "Csea launches New app",
    style: TextStyle(color: Colors.black, fontFamily: 'LemonMilk', fontSize: 15),
  ),

  subtitle: Text("Click the arrow to view more >",
      style: TextStyle(color: Colors.black, fontFamily: 'LemonMilk', fontSize: 10,)
  ),
  trailing:
  GestureDetector(onTap: (){
    Navigator.push(context,
        PageRouteBuilder(
          pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
            return DetailsPage();
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
  },
      child: Icon(Icons.keyboard_arrow_right,color: Colors.black,size: 40.0,)),
);




