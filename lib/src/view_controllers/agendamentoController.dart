import 'package:BarberConfort/src/model/Barber.dart';
import 'package:flutter/material.dart';
import 'package:BarberConfort/src/utils/formatString.dart';
import 'package:BarberConfort/src/utils/firebase.dart';
import 'package:BarberConfort/src/screens/scheduleConcluded.dart';

void agendar(DateTime data, TimeOfDay horario, context, Barber barber) async {
  var scheduleModel = {
    "user": 'Fulano',
    "BarberName": barber.name,
    "BarberKey": barber.key,
    "data": '${formatDate(data)}',
    "hora": '${formatHour(horario, context)}'
  };

  fireDatabase.child("Schedules").push().set(scheduleModel).then((value) {
    callConcludedPage(context, data.weekday, data, horario, barber.name);
  });
}

callConcludedPage(context, weekday, day, time, barber) {
  String msg =
      '${weekdayController(weekday)}, dia ${formatDateFullName(day)} ás ${formatHour(time, context)} com $barber';

  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) {
      return new ScheduleConcluded(msg);
    }),
  );
}
