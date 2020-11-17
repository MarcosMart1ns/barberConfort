import 'package:flutter/material.dart';
import 'package:BarberConfort/src/themes/theme.dart';
import 'package:BarberConfort/src/utils/firebase.dart';

Future<void> alertDialog(context, String title, String key) async {
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title,
            style: customTheme.primaryTextTheme.headline6,
          ),
          backgroundColor: customTheme.backgroundColor,
          actions: [
            FlatButton(
              textColor: customTheme.buttonColor,
              highlightColor: Colors.transparent,
              onPressed: () {
                fireDatabase
                    .child('/Schedules')
                    .child(key)
                    .remove()
                    .then((value) => Navigator.of(context).pop());
              },
              child: Text("Cancelar Agendamento"),
            ),
            FlatButton(
              textColor: customTheme.buttonColor,
              highlightColor: Colors.transparent,
              child: Text("Voltar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      });
}
