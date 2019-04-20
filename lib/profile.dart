import 'package:flutter/material.dart';
import 'Profile/assets/TopCard.dart';
import 'Profile/assets/BottomCard.dart';



class ProfilePage extends StatelessWidget {
  @override
  Widget profile() {
    return Column(children: <Widget>[
     Topcard(),
     Bottomcard(),
     //Bottomcard(),
    ]);
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return profile();
  }
}
