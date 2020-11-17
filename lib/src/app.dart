//import 'package:BarberConfort/src/screens/splash.dart';
import 'package:BarberConfort/src/screens/Login.dart';
import 'package:flutter/material.dart';
import 'package:BarberConfort/src/utils/setNavStatusBar.dart';
import 'package:BarberConfort/src/themes/theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    setSysColor(customTheme.primaryColor, customTheme.primaryColor);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: customTheme,
      home: Login(),
    );
  }
}
