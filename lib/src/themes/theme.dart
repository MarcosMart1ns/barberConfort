import 'package:flutter/material.dart';

final ThemeData customTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.black,
  backgroundColor: Colors.black12,
  primaryTextTheme: TextTheme(
    headline6: TextStyle(color: Colors.white),
    button: TextStyle(fontSize: 16),
  ),
  fontFamily: 'RobotoSlab',
  buttonColor: Color.fromRGBO(45, 87, 253, 1),
  accentColor: Color.fromRGBO(45, 87, 253, 1),
  iconTheme: IconThemeData(color: Colors.white),
);
