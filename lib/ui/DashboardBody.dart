import 'package:flutter/material.dart';
import 'package:schoolpower_flutter/ui/CourseRow.dart';

class DashboardBody extends StatelessWidget {
  final List<int> courses = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemBuilder: (context, index) => CourseRow(courses[index]),
          itemCount: courses.length,
          padding: EdgeInsets.symmetric(vertical: 8.0)),
    );
  }
}
