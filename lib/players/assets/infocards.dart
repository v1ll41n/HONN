import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class Infocard extends StatelessWidget
{ 
   String name;
   double rating;
   Infocard(this.name,this.rating);
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Card(
        child: Container(
          padding: EdgeInsets.all(8.0),
          
          child: Column(
            children: <Widget>[
           Container(alignment: Alignment.centerLeft,child :Image.asset('assets/profilepic.jpg'),),
              // padding: EdgeInsets.all(8.0),
              SizedBox(width: 10,),
         Container (alignment:Alignment.topRight, child : 
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
             Row(children: <Widget>[Text('Name :'),SizedBox(width: 8,), Text(
                name,
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 20.0,
                ),
              ),],),
              //),
             Row(children: <Widget>[Text('Rating :'),SizedBox(width: 8,),StarRating(
                size: 25.0,
                rating: rating,
                color: Colors.orange,
                borderColor: Colors.grey,
              ),],),],),),
            ],
          ),
        ),
      );
  }
}