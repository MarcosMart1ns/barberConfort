import 'package:flutter/material.dart';
import 'package:BarberConfort/src/utils/setNavStatusBar.dart';
import 'package:BarberConfort/src/widgets/drawer.dart';
import 'package:BarberConfort/src/themes/theme.dart';
import 'package:BarberConfort/src/view_controllers/getBarbers.dart';
import 'package:BarberConfort/src/utils/getDeviceInfo.dart';
import 'package:BarberConfort/src/utils/firebase.dart';
import '../utils/globals.dart' as globals;

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State {
  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  build(BuildContext context) {
    setSysColor(customTheme.backgroundColor, customTheme.primaryColor);
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        drawer: sideMenu(context),
        appBar: AppBar(
            toolbarHeight: getDeviceHeight(context) * 0.10,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Bem vindo,',
                    style: Theme.of(context).primaryTextTheme.headline6),
                Text('${globals.User.name}',
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
                        vertical: getDeviceHeight(context) * 0.03),
                    alignment: Alignment.topLeft,
                    child: Text('Cabeleireiros',
                        style: Theme.of(context).primaryTextTheme.headline5)),
                Container(
                    margin: EdgeInsets.only(
                        bottom: getDeviceHeight(context) * 0.03),
                    alignment: Alignment.topLeft,
                    child: Text(
                        'Selecione um cabelereiro abaixo para agendar um atendimento:',
                        style: Theme.of(context).primaryTextTheme.headline6)),
                getBarbers,
              ],
            )));
  }
}
