import "package:flutter/material.dart";

class TextStyles {
  static final poppins = const TextStyle(fontFamily: 'Poppins');
  static final letterGradeTextStyle = poppins.copyWith(
    color: Colors.white,
    fontSize: 22.0,
    fontWeight: FontWeight.w400,
  );
  static final numberGradeTextStyle = poppins.copyWith(
    color: Colors.white,
    fontSize: 22.0,
    fontWeight: FontWeight.w400,
  );
  static final courseNameTextStyle = poppins.copyWith(
    color: Colors.black,
    fontSize: 22.0,
    fontWeight: FontWeight.w600,
  );
  static final courseNameTextStyleWhite = courseNameTextStyle.copyWith(
    color: Colors.white,
  );
  static final courseDetailTextStyle = poppins.copyWith(
    color: Colors.black54,
    fontSize: 13.0,
    fontWeight: FontWeight.w400,
  );
}
