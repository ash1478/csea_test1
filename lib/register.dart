import 'package:flutter/material.dart';
import 'package:csea_test1/loginPage.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Register extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Sample App",
        home: RegisterPage()
    );
  }

}

class RegisterPage extends StatefulWidget {

  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _email,_password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
                    endRadius: 100.0,
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
              Form(
                key: _formKey,
                child:Column(
                children:<Widget>[

                Padding(
                  padding: const EdgeInsets.only(left:10.0,right:10.0,top:20),
                  child: new Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: new TextFormField(
                        onSaved: (input) => _email = input,
                        validator: (input){
                          if(input.isEmpty)
                            {
                              return 'Please enter an email';
                            }
                          return null;
                          },
                        decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(fontFamily: 'LemonMilk',fontSize: 15.0,color: Colors.black)
                        ),
                      ),
                    ),
                  ),
                ),


              Padding(
                padding: const EdgeInsets.only(right:10.0,left: 10.0,top: 5),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new TextFormField(obscureText: true,
                      validator: (input)
                      {
                        if(input.length < 8){
                        return 'Password should consist a minimum of 8 characters';
                        }
                        return null;
                      },
                      onSaved: (input) => _password = input,
                      decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(fontFamily: 'LemonMilk',fontSize: 15.0,color: Colors.black)
                      ),
                    ),
                  ),
                ),
              ),
                ]),
              ),

              Padding(
                padding: const EdgeInsets.only(top:25.0,right: 20.0,left: 20.0),
                child: new Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: register,
                        child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15.0)
                            ),
                            child: Center(
                              child: new Text("Register",
                                style: new TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.white,
                                    fontFamily: 'LemonMilk'
                                ),
                              ),
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => new loginPage()));
                      },
                      child: new Text("Back to login",
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

  Future<void> register() async {
  final formState = _formKey.currentState;
  if(formState.validate())
  {
    try {
      formState.save();
      FirebaseUser user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: _email, password: _password);

        Fluttertoast.showToast(
          msg: "Account created successfully!",
          gravity: ToastGravity.BOTTOM,
          toastLength: Toast.LENGTH_SHORT,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 15.0,
        );

    }catch(e){
      print(e);
      Fluttertoast.showToast(
        msg: 'Something went wrong! Check your credentials or your network.',
        gravity: ToastGravity.BOTTOM,
        toastLength: Toast.LENGTH_LONG,
        backgroundColor: Colors.black.withOpacity(0.7),
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }

  }
  }
}
