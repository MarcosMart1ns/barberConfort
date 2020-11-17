import 'package:flutter/material.dart';
import 'package:BarberConfort/src/utils/getDeviceInfo.dart';
import 'package:BarberConfort/src/utils/formatString.dart';
import 'package:BarberConfort/src/view_controllers/agendamentoController.dart';

class ScheduleEdit extends StatefulWidget {
  var barberInfo;
  String scheduleKey;

  ScheduleEdit(String scheduleKey, barber) {
    this.barberInfo = barber;
    this.scheduleKey = scheduleKey;
  }

  ScheduleEditState createState() =>
      new ScheduleEditState(barberInfo, scheduleKey);
}

class ScheduleEditState extends State<ScheduleEdit> {
  Map<dynamic, dynamic> barberInfo;
  String scheduleKey;
  dynamic defaultDate;
  dynamic defaultTime;

  ScheduleEditState(barber, scheduleKey) {
    this.barberInfo = barber;
    this.scheduleKey = scheduleKey;
    this.defaultDate = barberInfo["data"];
    this.defaultTime = barberInfo["hora"];
  }

  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  selectDate(BuildContext context) async {
    bool dataAexibir(DateTime day) {
      if (day.weekday == 6 || day.weekday == 7) {
        return false;
      }

      if ((day.isAfter(DateTime.now().subtract(Duration(days: 1))) &&
          day.isBefore(DateTime.now().add(Duration(days: 20))))) {
        return true;
      }

      return false;
    }

    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025),
        selectableDayPredicate: dataAexibir,
        helpText: 'Selecione uma data',
        cancelText: 'Cancelar',
        confirmText: 'Confirmar',
        fieldLabelText: 'Insira uma data para o agendamento',
        fieldHintText: 'Dia/Mês/Ano',
        //locale: Locale('br')
        builder: (context, child) {
          return Theme(
            data: ThemeData.dark(),
            child: child,
          );
        });

    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
        context: context,
        initialTime: selectedTime,
        confirmText: 'Confirmar',
        cancelText: 'Cancelar',
        helpText: 'Selecione um horário',
        builder: (context, child) {
          return Theme(
            data: ThemeData.dark(),
            child: child,
          );
        });

    if (picked != null && picked != selectedTime)
      setState(() {
        selectedTime = picked;
      });
  }

  @override
  Widget build(context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          toolbarHeight: getDeviceHeight(context) * 0.15,
          centerTitle: true,
          title: Text('Re-Agendamento',
              style: Theme.of(context).primaryTextTheme.headline5),
        ),
        body: Container(
          margin:
              EdgeInsets.symmetric(horizontal: getDeviceWidth(context) * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.symmetric(
                      vertical: getDeviceWidth(context) * 0.04),
                  alignment: Alignment.topLeft,
                  child: Text(
                      'Selecione uma outra data e horário para reagendar com ${barberInfo["BarberName"]} ',
                      style: Theme.of(context).primaryTextTheme.headline6)),
              //DATEPICKER
              Expanded(
                  child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: getDeviceHeight(context) * 0.02),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Na data: ',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .headline6),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: getDeviceHeight(context) * 0.01),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom:
                                            getDeviceHeight(context) * 0.02),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(formatDate(selectedDate),
                                            style: Theme.of(context)
                                                .primaryTextTheme
                                                .headline6),
                                        RaisedButton(
                                            padding: EdgeInsets.all(10),
                                            shape: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                borderSide: BorderSide.none),
                                            onPressed: () =>
                                                selectDate(context),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text('Alterar data ',
                                                    style: Theme.of(context)
                                                        .primaryTextTheme
                                                        .button),
                                                Icon(Icons.calendar_today),
                                              ],
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //TIMEPICKER
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('No horário: ',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .headline6),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: getDeviceHeight(context) * 0.01),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${selectedTime.format(context)}',
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .headline6),
                                  RaisedButton(
                                      padding: EdgeInsets.all(10),
                                      shape: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: BorderSide.none),
                                      onPressed: () => selectTime(context),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text('Alterar horário ',
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .button),
                                          Icon(Icons.access_time),
                                        ],
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: getDeviceWidth(context) * 0.04),
                          child: RaisedButton(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide.none),
                            onPressed: () {
                              updateSchedule(
                                  selectedDate,
                                  selectedTime,
                                  context,
                                  barberInfo["BarberName"],
                                  scheduleKey);
                            },
                            child: Text('Reagendar',
                                style:
                                    Theme.of(context).primaryTextTheme.button),
                          ),
                        )),
                      ],
                    ),
                  ],
                ),
              )),
            ],
          ),
        ));
  }
}
