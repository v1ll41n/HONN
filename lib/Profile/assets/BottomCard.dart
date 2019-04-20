import 'package:flutter/material.dart';
import 'Com.dart';

class Bottomcard extends StatelessWidget
{

    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return     Card(
        child: Column(
          //,
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Communities',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: "newarial", color: Colors.black, fontSize: 20

                    //decoration: TextDecoration.
                    // decorationColor: Colors.red,
                    // decorationStyle: TextDecorationStyle.wavy,
                    ),
              ),
            ),
            Row(children: <Widget>[Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.topLeft,
              child: ComGen('Basket','assets/bb.jpg'),
            ),Container(
              margin: EdgeInsets.all(10.0),
              alignment: Alignment.topRight,
              child: ComGen('Foot','assets/bb.jpg'),
            )],),
          ],
        ),
      );
  }
}