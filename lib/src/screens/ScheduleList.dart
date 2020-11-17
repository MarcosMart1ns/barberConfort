import 'package:flutter/material.dart';
import 'package:BarberConfort/src/utils/getDeviceInfo.dart';
import 'package:BarberConfort/src/themes/theme.dart';
import 'package:BarberConfort/src/view_controllers/agendamentoController.dart';
import '../utils/globals.dart' as globals;

class ScheduleList extends StatefulWidget {
  ScheduleListState createState() => new ScheduleListState();
}

class ScheduleListState extends State<ScheduleList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: getDeviceHeight(context) * 0.15,
          centerTitle: true,
          title: Text('Lista de Agendamentos',
              style: Theme.of(context).primaryTextTheme.headline5),
        ),
        backgroundColor: customTheme.backgroundColor,
        body: Column(
          children: [
            listSchedules(globals.User.email),
          ],
        ));
  }
}
