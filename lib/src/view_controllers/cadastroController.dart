import 'package:BarberConfort/src/screens/SignConcluded.dart';
import 'package:BarberConfort/src/widgets/customAlertDialog.dart';
import 'package:flutter/material.dart';
import 'package:BarberConfort/src/model/User.dart';
import 'package:BarberConfort/src/utils/database_helper.dart';

cadastrar(User user, context) async {
  await getUserByEmail(user.email).then((value) {
    if (value.length == 0) {
      //EMAIL Não existe
      create(user).then((value) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SignUpConcluded();
        }));
      });
    } else {
      //email já exite
      customAlertDialog(context, 'Email já existe no sistema');
    }
  });
}
