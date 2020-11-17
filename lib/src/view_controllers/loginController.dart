import 'package:flutter/material.dart';
import 'package:BarberConfort/src/screens/Home.dart';
import 'package:BarberConfort/src/model/User.dart';
import 'package:BarberConfort/src/utils/database_helper.dart';
import 'package:BarberConfort/src/widgets/customAlertDialog.dart';
import '../utils/globals.dart' as globals;

Future showAllUsers(String email, String password, context) async {
  await getUserByEmail(email).then((value) {
    if (value.length == 0) {
      //EMAIL INCORRETO
      customAlertDialog(context, 'Email incorreto');
    } else {
      for (User user in value) {
        if (user.password == password) {
          //TUDO CERTO E LOGA
          globals.User.name = user.name;
          globals.User.email = user.email;

          Navigator.of(context).pop();
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Home();
          }));
        } else {
          //SENHA INCORRETA
          customAlertDialog(context, 'Senha incorreta');
        }
      }
    }
  });
}
