import 'package:BarberConfort/src/utils/getDeviceInfo.dart';
import 'package:BarberConfort/src/widgets/aboutDialog.dart';
import 'package:flutter/material.dart';
import 'package:BarberConfort/src/themes/theme.dart';
import 'package:BarberConfort/src/widgets/showLogo.dart';
import 'package:BarberConfort/src/widgets/drawerItem.dart';
import 'package:BarberConfort/src/screens/ScheduleList.dart';

Widget sideMenu(context) {
  return Drawer(
      child: Container(
    color: customTheme.backgroundColor,
    child: ListView(
      children: [
        DrawerHeader(
          margin: EdgeInsets.all(0),
          decoration: BoxDecoration(color: customTheme.primaryColor),
          child: Center(
            child: SizedBox(
              width: getDeviceWidth(context) * 0.70,
              child: appLogo,
            ),
          ),
        ),
        ListTile(
          title: drawerItem('Agendamentos', Icons.calendar_today, context),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return new ScheduleList();
            }));
          },
        ),
        ListTile(
            title: drawerItem('Sobre', Icons.info_outline, context),
            onTap: () {
              Navigator.of(context).pop();
              aboutDialog(context);
            })
      ],
    ),
  ));
}
