import 'package:flutter/material.dart';
import 'package:BarberConfort/src/widgets/showLogo.dart';

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          showLogo(),
          Text('Faça seu login',
              style: Theme.of(context).primaryTextTheme.headline6),
        ],
      ),
    );
  }
}
