import 'package:BarberConfort/src/utils/getDeviceInfo.dart';
import 'package:BarberConfort/src/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:BarberConfort/src/utils/setNavStatusBar.dart';

class SignUpConcluded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    setSysColor(
        Theme.of(context).backgroundColor, Theme.of(context).backgroundColor);
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Container(
            margin: EdgeInsets.symmetric(
                horizontal: getDeviceWidth(context) * 0.12),
            child: Center(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.check,
                    color: Color.fromRGBO(4, 211, 97, 1), size: 80),
                Container(
                    margin: EdgeInsets.symmetric(
                        vertical: getDeviceHeight(context) * 0.03),
                    child: Column(
                      children: [
                        Text(
                          "Cadastro\nConcluído",
                          style: customTheme.primaryTextTheme.headline5,
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: getDeviceHeight(context) * 0.03),
                          child: Text(
                            'Agora é só fazer seu Login\ncom o email e senha informados',
                            style: customTheme.primaryTextTheme.headline6,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    )),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: getDeviceWidth(context) * 0.20),
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none),
                        child: Text('OK',
                            style: TextStyle(
                                fontSize: customTheme
                                    .primaryTextTheme.button.fontSize)),
                        onPressed: () {
                          setSysColor(customTheme.backgroundColor,
                              customTheme.primaryColor);
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                        },
                      ),
                    )),
                  ],
                ),
              ],
            ))));
  }
}
