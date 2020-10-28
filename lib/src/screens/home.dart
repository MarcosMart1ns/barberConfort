import 'package:flutter/material.dart';

import 'package:BarberConfort/src/widgets/avatar.dart';
import 'package:BarberConfort/src/view_controllers/getBarbers.dart';
import 'package:BarberConfort/src/utils/getDeviceInfo.dart';
import 'package:BarberConfort/src/utils/firebase.dart';

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State {
  @override
  void initState() {
    initializeFlutterFire();
    print('reiniciou');
    super.initState();
  }

  @override
  build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900], //Theme.of(context).backgroundColor,
        appBar: AppBar(
            actions: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 14),
                  child: avatar(context))
            ],
            toolbarHeight: getDeviceHeight(context) * 0.15,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Bem vindo,',
                    style: Theme.of(context).primaryTextTheme.headline6),
                Text('Fulano',
                    style:
                        Theme.of(context).primaryTextTheme.headline6.copyWith(
                              color: Color.fromRGBO(45, 87, 253, 1),
                            )),
              ],
            )),
        body: Container(
            margin: EdgeInsets.symmetric(
                horizontal: getDeviceWidth(context) * 0.05),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(
                        vertical: getDeviceWidth(context) * 0.05),
                    alignment: Alignment.topLeft,
                    child: Text('Cabeleireiros',
                        style: Theme.of(context).primaryTextTheme.headline5)),
                getBarbers,
              ],
            )));
  }
}
