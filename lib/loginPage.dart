import 'package:flutter/material.dart';
import 'package:csea_test1/register.dart';
import 'package:csea_test1/homePage.dart';
import 'package:avatar_glow/avatar_glow.dart';

class loginPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "CSEA APP",
        home: Loginpage()
    );
  }

}

class Loginpage extends StatefulWidget {

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body:new Stack(
        children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/profile_background.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop))
          ),
        ),

          ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left:10.0,right:10.0,top:20),
                child: new Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new TextField(
                      decoration: InputDecoration(
                          labelText: "Registration Number",
                          labelStyle: TextStyle(fontFamily: 'LemonMilk',fontSize: 15.0,color: Colors.black)
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(fontFamily: 'LemonMilk',fontSize: 15.0,color: Colors.black)
                      ),
                    ),
                  ),
                ),
              ),

            Padding(
              padding: const EdgeInsets.only(top:25.0,right: 20.0,left: 20.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context,
                      new MaterialPageRoute(builder: (context) => new HomePage())
                  );
                },
                child: new Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Center(
                            child: new Text("LOGIN",
                            style: new TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontFamily: 'LemonMilk'
                ),
                        ),
                          )
                        ),
                      ),
                    ],
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: new Row(children: <Widget>[
                Expanded(
                  child: new Container(
                    height: 30,
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: Divider(
                        color: Colors.black,
                        height: 36,
                      )),
                ),
                Text("OR"),
                Expanded(
                  child: new Container(
                    height: 30,
                      margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: Divider(
                        color: Colors.black,
                        height: 36,
                      )),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                new Text("New Member? ",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'LemonMilk',
                    fontSize: 15,
                  ),
                ),
                new GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new Register())
                    );
                  },
                  child: new Text("Register Now!",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 15,
                        fontFamily: 'LemonMilk'
                    ),

                  ),
                ),
              ],
              ),
            )
            ],
          ),

        ],
      ),
    );
  }
}
