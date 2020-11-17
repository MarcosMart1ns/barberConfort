import 'package:flutter/material.dart';
import 'package:BarberConfort/src/themes/theme.dart';
import 'package:BarberConfort/src/widgets/hyperlink.dart';

Future<void> customAlertDialog(context, title, [msg]) async {
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            children: [
              Text(
                title,
                style: customTheme.primaryTextTheme.bodyText1
                    .copyWith(fontSize: 20),
              ),
              Text(
                msg ?? '',
                style: customTheme.primaryTextTheme.bodyText2
                    .copyWith(fontSize: 20),
              ),
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
