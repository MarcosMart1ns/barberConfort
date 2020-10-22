import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

void setSysColor(Color navBarColor, Color statusBarColor) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: statusBarColor,
    systemNavigationBarColor: navBarColor,
    systemNavigationBarIconBrightness: Brightness.light,
  ));
}
