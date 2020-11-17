import 'package:flutter/material.dart';
import 'package:BarberConfort/src/themes/theme.dart';
import 'package:BarberConfort/src/widgets/alertDialog.dart';
import 'package:BarberConfort/src/screens/ScheduleEdit.dart';

Widget scheduleCard(scheduleKey, values, context) {
  return Card(
    color: customTheme.cardColor,
    child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return new ScheduleEdit(scheduleKey, values);
            }),
          );
        },
        enabled: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nº $scheduleKey', style: TextStyle(color: Colors.white)),
            Text('${values["data"]} ás ${values["hora"]}',
                style: TextStyle(color: Colors.white)),
          ],
        ),
        subtitle: Text('Com: ${values["BarberName"]}',
            style: TextStyle(color: Colors.white)),
        trailing: IconButton(
            icon: Icon(Icons.delete, color: Colors.white),
            onPressed: () {
              alertDialog(context, 'Deseja realmente cancelar o agendamento?',
                  scheduleKey);
            })),
  );
}
