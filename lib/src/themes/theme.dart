import 'package:flutter/material.dart';

final ThemeData customTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.black,
  backgroundColor: Colors.black12,
  primaryTextTheme: TextTheme(
    headline6: TextStyle(color: Colors.white),
  ),
  fontFamily: 'RobotoSlab',
  buttonColor: Color.fromRGBO(45, 87, 253, 1),
  accentColor: Color.fromRGBO(45, 87, 253, 1),
  primaryIconTheme: IconThemeData(color: Colors.white),
  accentIconTheme: IconThemeData(color: Colors.white),
  iconTheme: IconThemeData(color: Colors.white),
);
