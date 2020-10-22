import 'package:BarberConfort/src/widgets/showLogo.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  final String logoUrl = 'assets/Logo.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: showLogo(),
      ),
    );
  }
}
