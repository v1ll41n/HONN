import 'package:flutter/material.dart';
import 'QuestionPage.dart';
import 'Players.dart';
import 'drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HONN',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        drawer:  SideDraw(),
        appBar: AppBar(title: Text('Home')),
        body: Column(children: <Widget>[
              
             //Center(child: Text('Profile Page'),)
             
             // Players(),
             QuestionsPage ('How Many medals Egyptian athletes have won in olympic games? ','45','25','33','32'),

        ],),
      ),
     
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


