import 'package:BarberConfort/src/widgets/showLogo.dart';
import 'package:BarberConfort/src/utils/getDeviceInfo.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: SizedBox(
          width: getDeviceWidth(context) * 0.70,
          child: appLogo,
        ),
      ),
    );
  }
}
