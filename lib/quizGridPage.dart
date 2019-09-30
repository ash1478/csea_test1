import 'package:flutter/material.dart';
import 'package:csea_test1/quizPage.dart';
class GridPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizGridPage(),
      title: 'Sample App',
    );
  }
}

class QuizGridPage extends StatefulWidget{
  QuizGridPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _QuizGridPageState createState() => _QuizGridPageState();
}

class _QuizGridPageState extends State<QuizGridPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar,
      body: quizGridBody(context),
    );
  }

}

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




Container quizGridBody(context) => new Container(
  decoration: BoxDecoration(
    image: DecorationImage(image: AssetImage("images/profile_background.jpg"),
    fit: BoxFit.cover)
  ),
child: GridView.count(
  crossAxisCount: 2,
  crossAxisSpacing: 15.0,
  mainAxisSpacing: 15.0,
  padding: EdgeInsets.all(15.0),
  children: <GridTile>[
    new GridTile(child: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                  image: AssetImage("images/motherboard_pic.jpg"),
                  fit: BoxFit.cover)          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15.0)
          ),
        ),
        Center(child: Transform.rotate(angle: 6,
            child: Text("Quiz I",style: TextStyle(fontFamily: 'LemonMilk',fontSize: 25,color: Colors.white,),))),
      ],
    ),
         ),
    new GridTile(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                      image: AssetImage("images/motherboard_pic.jpg"),
                      fit: BoxFit.cover)          ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15.0)
              ),
            ),
            Center(child: Transform.rotate(angle: 6,
                child: Text("Quiz II",style: TextStyle(fontFamily: 'LemonMilk',fontSize: 25,color: Colors.white,),))),
          ],
        ),
         ),

    new GridTile(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: AssetImage("images/motherboard_pic.jpg"),
                    fit: BoxFit.cover)          ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15.0)
            ),
          ),
          Center(child: Transform.rotate(angle: 6,
              child: Text("Quiz III",style: TextStyle(fontFamily: 'LemonMilk',fontSize: 25,color: Colors.white,),))),
        ],
      ), ),

    new GridTile(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: AssetImage("images/motherboard_pic.jpg"),
                    fit: BoxFit.cover)          ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15.0)
            ),
          ),
          Center(child: Transform.rotate(angle: 6,
              child: Text("Quiz IV",style: TextStyle(fontFamily: 'LemonMilk',fontSize: 25,color: Colors.white,),))),
        ],
      ), ),


  ],
),);