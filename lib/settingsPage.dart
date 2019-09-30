import 'package:flutter/material.dart';
import 'package:csea_test1/contactUsPage.dart';
import 'package:csea_test1/aboutUs.dart';


class SettingsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CSEA APP",
      debugShowCheckedModeBanner: false,
      home: SettingsPageView(),
    );
  }
}

class SettingsPageView extends StatefulWidget {
  @override
  _SettingsPageViewState createState() => _SettingsPageViewState();
}

class _SettingsPageViewState extends State<SettingsPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar,
      body: settingsBody(context),
    );
  }
}

final topAppBar = new AppBar(
  elevation: 0.1,
  automaticallyImplyLeading: true,
  backgroundColor: Colors.black,
  title: Text("Settings",
    style: new TextStyle(
      fontFamily: 'LemonMilk',
      fontSize: 20,
    ),
  ),

);


Container settingsBody(context) => Container(
  alignment: Alignment.center,
  decoration: BoxDecoration(
    image: DecorationImage(image: AssetImage("images/profile_background.jpg"),
    fit: BoxFit.cover,
    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop))
  ),
  child: ListView(

    children: <Widget>[
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(height: 60,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/8,left: 35,right: 35,bottom: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(15.0)
                ),
                child: new Text("Edit Profile ",
                  style: new TextStyle(
                      fontSize: 25.0,
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
            child: Container(height: 60,
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical:10,horizontal: 35),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(15.0)
                ),
                child: new Text("QUERIEs/FEEDBACKS",
                  style: new TextStyle(
                      fontSize: 25.0,
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
            child: GestureDetector(
              onTap: (){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new ContactUSPage()));
              },
              child: Container(height: 60,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical:10,horizontal: 35),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: new Text("Contact Us",
                    style: new TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontFamily: 'LemonMilk'
                    ),
                  )
              ),
            ),
          ),
        ],
      ),

      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new AboutUsPage()));
              },
              child: Container(height: 60,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical:10,horizontal: 35),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: new Text("About Us",
                    style: new TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontFamily: 'LemonMilk'
                    ),
                  )
              ),
            ),
          ),
        ],
      ),

      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(height: 60,
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical:10,horizontal: 35),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(15.0)
                ),
                child: new Text("DEVELOPERS",
                  style: new TextStyle(
                      fontSize: 25.0,
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
);