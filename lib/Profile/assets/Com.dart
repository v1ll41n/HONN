import 'package:flutter/material.dart';

class ComGen extends StatelessWidget{
 String comtext;
 String imgpath;
 ComGen(this.comtext,this.imgpath);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Row(
                children: <Widget>[
                  Image.asset(
                    imgpath,
                    height: 100,
                    width: 100,
                  ),
                  Text(
                    comtext,
                    style: TextStyle(
                        fontFamily: "newarial",
                        color: Colors.black,
                        fontSize: 20),
                  )
                ],
              );
  }
}