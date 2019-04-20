import 'package:flutter/material.dart';
List<QuestionButton> qs=new List<QuestionButton>();


class QuestionsPage extends StatelessWidget {
  String Question;
  String Answer1;
  String Answer2;
  String Answer3;
  String Answer4;
  QuestionsPage(String Question,String Answer1,String Answer2,String Answer3,String Answer4)
  {
  this.Question=Question;
  this.Answer1=Answer1;
  this.Answer2=Answer2;
  this.Answer3=Answer3;
  this.Answer4=Answer4;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Questions"),
        ),
        body: Center(
        child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Text(
            Question,
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)
    ),
        QStatefulWidget(answer: Answer1,),
        QStatefulWidget(answer: Answer2),
        QStatefulWidget(answer: Answer3),
        QStatefulWidget(answer: Answer4),
    ]
    )
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

class QStatefulWidget extends StatefulWidget {
  String Answer;
  QStatefulWidget({Key key,String answer}) : super(key: key)
  {
    Answer=answer;
  }

  @override
  QuestionButton createState() => QuestionButton(Answer);

}

class QuestionButton extends State<QStatefulWidget> {
  bool state=false;
  String Question;
  QuestionButton(String ques)
  {
    Question=ques;
    print("callled");
  }

  @override
  void initState() {
    super.initState();
    Reset();
    qs.add(this);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        new Checkbox(
            value: state,
            onChanged: (bool e)=>CheckBoxHandle()
        ),
        Text(
            Question
        )
      ],
    );


  }
  void CheckBoxHandle()
  {

      for (QuestionButton q in qs) {
        if(q.state)
          q.Reset();
      }
      setState(() {
        state=!state;
      });
  }
  void Reset()
  {
    setState(() {
      state=false;
    });
  }
}