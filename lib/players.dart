import 'package:flutter/material.dart';
import 'players/assets/dropdown.dart';
import 'players/assets/infocards.dart';

class Players extends StatelessWidget {

  List<String> sportlist = [
    'FootBall',
    'BasketBall',
    'Handball',
    'Kick Boxing'
  ];
  String defsport = 'BasketBall';
  List<String> locations = ['NasrCity', 'Embaba', 'MasrElgdeda', 'alasher'];
  String defLoc = 'NasrCity';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
     //padding: EdgeInsets.all(8.0),
      //alignment: Alignment.topCenter,
       Card(
        child: Column(
          children: <Widget>[

          Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[Text('Search by Sport',style: TextStyle(fontWeight: FontWeight.bold,),),SizedBox(width: 20,),DropDown(sportlist, defsport),],),
            Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[Text('Search by Location', style: TextStyle(fontWeight: FontWeight.bold,),),SizedBox(width: 20,),DropDown(locations, defLoc),],),
            
          ],
        ),
      ),SizedBox(height: 10,),
      Card(
         child:Column(children: <Widget>[
        Infocard('Layla Hassan',5.0),
        SizedBox(height: 10,),
        Infocard('Layla Hassan',4.0),
        //Infocard('kariima',5.0),
         ],),
      ),
    ],);
  }
}
