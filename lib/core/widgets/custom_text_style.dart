import 'package:flutter/material.dart';

const String family = 'Comfortaa';

class CustomTextStyle {
  static const TextStyle buttonTextStyle = TextStyle(
    fontFamily: family,
    fontSize: 24,
    color: Colors.white,
  );
  static const TextStyle appBarTextStyle = TextStyle(
    fontFamily: family,
    fontSize: 35,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle cardItemTextStyle = TextStyle(
    fontFamily: family,
    fontSize: 15,
    color: Colors.brown,
  );
  static const TextStyle homeItemTextStyle = TextStyle(
    fontFamily: family,
    fontSize: 15,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
}
