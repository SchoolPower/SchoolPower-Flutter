import 'package:flutter/material.dart';
import 'package:schoolpower_flutter/styles/TextStyles.dart';

class CourseRow extends StatelessWidget {

  final int course;
  CourseRow(this.course);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      child: new Stack(
        children: <Widget>[
          courseCard,
          scoreCard,
        ],
      )
    );
  }

  final scoreCard = new Container(
    width: 92.0,
    height: 92.0,
    margin: new EdgeInsets.symmetric(
      vertical: 16.0
    ),
    alignment: FractionalOffset.centerLeft,
    decoration: new BoxDecoration(
      color: Colors.teal,
      shape: BoxShape.rectangle,
      borderRadius: new BorderRadius.circular(8.0),
      boxShadow: <BoxShadow>[
        new BoxShadow(  
          color: Colors.black26,
          blurRadius: 5.0,
          offset: new Offset(0.0, 3.0),
        ),
      ],
    ),
    child: new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("A", style: TextStyles.letterGradeTextStyle),
          new Text("100", style: TextStyles.numberGradeTextStyle),
        ]
      )
    ),
  );

  final courseCard = new Container(
    child: new Container(
      margin: new EdgeInsets.fromLTRB(66.0, 26.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text("Pre-Calculus 12", style: TextStyles.courseNameTextStyle),
          new Container(height: 3,),
          new Text("Samuel Owusu-Amoah", style: TextStyles.courseDetailTextStyle),
          new Text("2(A-E)", style: TextStyles.courseDetailTextStyle),
        ]
      ),
    ),
    height: 124.0,
    margin: new EdgeInsets.only(left: 46.0),
    decoration: new BoxDecoration(
      color: Colors.white,
      shape: BoxShape.rectangle,
      borderRadius: new BorderRadius.circular(8.0),
      boxShadow: <BoxShadow>[
        new BoxShadow(  
          color: Colors.black26,
          blurRadius: 5.0,
          offset: new Offset(0.0, 3.0),
        ),
      ],
    ),
  );
}
