import 'package:flutter/material.dart';

class SubjectsPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Sample App',
      home: new SubListPage(),
      debugShowCheckedModeBanner: false,

    );
  }
}


class SubListPage extends StatefulWidget {

  @override
  _SubListPageState createState() => _SubListPageState();
}

class _SubListPageState extends State<SubListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: topAppBar,
      body: subjectsBody(context),

    );
  }
}

final topAppBar = new AppBar(
  elevation: 0.1,
  backgroundColor: Colors.black,
  title: Text("Subjects",
    style: new TextStyle(
      fontFamily: 'LemonMilk',
      fontSize: 20,
    ),
  ),

);

Container subjectsBody(context) => Container(
  decoration: BoxDecoration(
    image:DecorationImage(image: AssetImage("images/profile_background.jpg"),
    fit: BoxFit.cover,
    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop))
  ),
  child: ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemExtent: 200,
      itemCount: 10,

      itemBuilder: (BuildContext context,int index)
      {
        return subjectCard(context);
      }
      ),
);

Container subjectCard(context) => Container(
  margin: new EdgeInsets.symmetric(vertical: 7.0,horizontal: 20.0),

    child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(image: AssetImage("images/abcd.png"),
                    fit: BoxFit.cover)
            ),
          ),


             Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.black.withOpacity(0.3)
              ),
              child: Center(
                child: Text("DATA STRUCTURES",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'LemonMilk',

                      color: Colors.white
                  ),),
              ),
            ),
          ]
    )
);

