import 'package:flutter/material.dart';

class CustomTheme {
  ThemeData theme = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.grey[900],
      backgroundColor: Colors.grey[900],
      primaryTextTheme: TextTheme(
        headline6: TextStyle(color: Colors.white),
      ),
      fontFamily: 'Roboto Slab');
}
