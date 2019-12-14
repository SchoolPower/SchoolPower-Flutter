import 'package:flutter/material.dart';
import 'package:schoolpower_flutter/styles/TextStyles.dart';

class CourseRow extends StatelessWidget {
  final int course;

  CourseRow(this.course);

  double _getAppBarHeight(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.3;

  @override
  Widget build(BuildContext context) {
    final double appBarHeight = _getAppBarHeight(context);
    final scoreCardContainer = Container(
      width: 92.0,
      height: 92.0,
      margin: EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        color: Colors.teal,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 3.0,
          ),
        ],
      ),
      alignment: FractionalOffset.centerLeft,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("A", style: TextStyles.letterGradeTextStyle),
            Hero(
              tag: course.toString() + "numGrade",
              child: Text("100", style: TextStyles.numberGradeTextStyle),
            ),
          ],
        ),
      ),
    );

    final courseCardContainer = Container(
      margin: EdgeInsets.fromLTRB(66.0, 26.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Hero(
            tag: course.toString() + "title",
            child:
                Text("Pre-Calculus 12", style: TextStyles.courseNameTextStyle),
          ),
          Container(
            height: 3,
          ),
          Text("Samuel Owusu-Amoah", style: TextStyles.courseDetailTextStyle),
          Text("2(A-E)", style: TextStyles.courseDetailTextStyle),
        ],
      ),
    );

    final scoreCard = Hero(tag: course.toString(), child: scoreCardContainer);

    final courseCard = Container(
      child: courseCardContainer,
      height: 124.0,
      margin: EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5.0,
          ),
        ],
      ),
    );

    final courseDetailAppBar = SliverAppBar(
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text('PC12'),
        collapseMode: CollapseMode.parallax,
      ),
      backgroundColor: Colors.teal,
    );

    final courseDetailPage = Scaffold(
      body:
//      Column(
//        children: <Widget>[
//          Hero(
//            tag: course.toString(),
//            child: Container(
//              decoration: BoxDecoration(
//                color: Colors.teal,
//                boxShadow: <BoxShadow>[
//                  BoxShadow(
//                      color: Colors.black26,
//                      blurRadius: 3.0,
//                      offset: Offset(0, 3.0)),
//                ],
//              ),
//              child:
          CustomScrollView(
        slivers: <Widget>[
           courseDetailAppBar,

          SliverFillRemaining(
            child: Container(
              height: 150,
              margin: EdgeInsets.only(left: 20, top: 10),
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.rectangle,
              ),
              child: Hero(
                tag: course.toString() + "numGrade",
                child: Text('100', style: TextStyles.numberGradeTextStyle),
              ),
            ),
          ),
        ],

//              ),
//            ),
//          ),
//        ],
      ),
    );

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (BuildContext context) {
              return courseDetailPage;
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 16.0,
        ),
        child: Stack(
          children: <Widget>[
            courseCard,
            scoreCard,
          ],
        ),
      ),
    );
  }
}
