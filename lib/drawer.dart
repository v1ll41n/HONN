import 'package:flutter/material.dart';
import 'package:honn/profile.dart';

class SideDraw extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
  // Add a ListView to the drawer. This ensures the user can scroll
  // through the options in the Drawer if there isn't enough vertical
  // space to fit everything.
  child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: <Widget>[
      DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.pink,
        ),
        child: Column( children: <Widget>[
          
           Image.asset('assets/profilepic.jpg'),
            SizedBox(height: 8),
           Text('Karima Selim'),
        ],)
      )
      ,
     
      ListTile(
        title: Text('Players'),
        onTap: () {
          //Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
          // Update the state of the app
          // ...
        },
      ),
      ListTile(
        title: Text('Mentors'),
        onTap: () {
          // Update the state of the app
          // ...
        },
      ),
      ListTile(
        title: Text('Information'),
        onTap: () {
          // Update the state of the app
          // ...
        },
      ),
      ListTile(
        title: Text('Communities'),
        onTap: () {
          // Update the state of the app
          // ...
        },
      ),
    ],
  ),
);

  }
}