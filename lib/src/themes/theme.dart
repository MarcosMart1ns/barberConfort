import 'package:flutter/material.dart';

final ThemeData customTheme = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  brightness: Brightness.light,
  primaryColor: Colors.black,
  backgroundColor: Colors.black38,
  primaryTextTheme: TextTheme(
    headline6: TextStyle(color: Colors.white),
    headline5: TextStyle(color: Colors.white, fontSize: 25),
    button: TextStyle(fontSize: 16),
    bodyText1: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
  ),
  fontFamily: 'RobotoSlab',
  buttonColor: Color.fromRGBO(45, 87, 253, 1),
  accentColor: Color.fromRGBO(45, 87, 253, 1),
  iconTheme: IconThemeData(color: Colors.white),
  cardTheme: CardTheme(),
  cardColor: Color.fromRGBO(0, 22, 53, 1),
);
