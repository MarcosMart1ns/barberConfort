import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:BarberConfort/src/model/Barber.dart';
import 'package:flutter/material.dart';
import 'package:BarberConfort/src/utils/formatString.dart';
import 'package:BarberConfort/src/utils/firebase.dart';
import 'package:BarberConfort/src/screens/ScheduleConcluded.dart';
import 'package:BarberConfort/src/widgets/scheduleCard.dart';
import '../utils/globals.dart' as globals;

//CREATE
void createSchedule(
    DateTime data, TimeOfDay horario, context, Barber barber) async {
  var scheduleModel = {
    "user": globals.User.email,
    "BarberName": barber.name,
    "BarberKey": barber.key,
    "data": '${formatDate(data)}',
    "hora": '${formatHour(horario, context)}'
  };

  fireDatabase.child("/Schedules").push().set(scheduleModel).then((value) {
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

//READ agendamentos
Widget listSchedules(String user) {
  return Expanded(
      child: FirebaseAnimatedList(
          query: fireDatabase.child('/Schedules'),
          itemBuilder: (context, snapshot, animation, index) {
            var key = snapshot.key;
            Map<dynamic, dynamic> values = snapshot.value;
            if (values["user"] == user) {
              return scheduleCard(key, values, context);
            }
            return Text('');
          }));
}

//UPDATE AGENDAMENTOS
void updateSchedule(
    DateTime data, TimeOfDay horario, context, barbername, key) async {
  var scheduleModel = {
    "data": '${formatDate(data)}',
    "hora": '${formatHour(horario, context)}'
  };
  fireDatabase
      .child("Schedules")
      .child(key)
      .update(scheduleModel)
      .then((value) {
    callConcludedPage(context, data.weekday, data, horario, barbername);
  });
}
