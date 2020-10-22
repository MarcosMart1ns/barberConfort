import 'package:BarberConfort/src/screens/splash.dart';
import 'package:BarberConfort/src/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:BarberConfort/src/utils/setNavStatusBar.dart';
import 'package:BarberConfort/src/themes/theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    setSysColor(
        CustomTheme().theme.primaryColor, CustomTheme().theme.primaryColor);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme().theme,
      home: Home(),
    );
  }
}
