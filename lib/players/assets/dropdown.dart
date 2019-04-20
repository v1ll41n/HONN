import 'package:flutter/material.dart';

class DropDown extends StatefulWidget
{
  List<String> strlist;
  String defval;
  DropDown(this.strlist,this.defval);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DropDown(strlist,defval);
  }
}
class _DropDown extends State<DropDown>
{

  List<String> strlist=[];
  String defval='';
  _DropDown(this. strlist,this.defval);

  @override
  Widget build(BuildContext context) {

    return DropdownButton<String>(
      items: strlist.map((String dropDownItem){
       
             return DropdownMenuItem<String>(
               value:dropDownItem ,
               child: Text(dropDownItem)

             );
      }).toList(),
     onChanged: (String newSelected)
      {
             setState(() {
               this.defval=newSelected;
             });

      },
    value: defval
    
    ,);
  }
}