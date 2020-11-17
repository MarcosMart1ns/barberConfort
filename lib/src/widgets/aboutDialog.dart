import 'package:flutter/material.dart';
import 'package:BarberConfort/src/themes/theme.dart';
import 'package:BarberConfort/src/widgets/hyperlink.dart';

Future<void> aboutDialog(context) async {
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            children: [
              Text(
                "Aplicação feita por: \nMarcos Martins\n",
                style: customTheme.primaryTextTheme.bodyText1
                    .copyWith(fontSize: 20),
              ),
              Hyperlink(
                  'https://github.com/xMartinezZz/barberConfort', 'Github'),
            ],
          ),
          backgroundColor: customTheme.backgroundColor,
          actions: [
            FlatButton(
              textColor: customTheme.buttonColor,
              highlightColor: Colors.transparent,
              child: Text("Ok"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      });
}
