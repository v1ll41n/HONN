import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class Topcard extends StatelessWidget
{

    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Card(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Image.asset('assets/profilepic.jpg'),
              // padding: EdgeInsets.all(8.0),
              Text(
                'Layla Hassan',
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 20.0,
                ),
              ),
              //),
              StarRating(
                size: 25.0,
                rating: 5,
                color: Colors.orange,
                borderColor: Colors.grey,
              )
            ],
          ),
        ),
      );
  }
}