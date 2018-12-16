import 'package:flutter/material.dart';
import 'package:schoolpower_flutter/ui/CourseRow.dart';

class DashboardBody extends StatelessWidget {

  final List<int> courses = [
    1,1,1,1,1,1,1
  ];

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new ListView.builder(
        itemBuilder: (context, index) => new CourseRow(courses[index]),
        itemCount: courses.length,
        padding: new EdgeInsets.symmetric(vertical: 8.0)
      ),
    );
  }
}
