import 'package:flutter/material.dart';
import 'package:BarberConfort/src/utils/getDeviceInfo.dart';
import 'package:BarberConfort/src/model/Barber.dart';
import 'package:BarberConfort/src/widgets/miniCard.dart';
import 'package:BarberConfort/src/widgets/datePickerBlock.dart';
import 'package:BarberConfort/src/widgets/timePickerBlock.dart';

class SchedulePage extends StatefulWidget {
  Barber barberInfo;

  SchedulePage(Barber barber) {
    this.barberInfo = barber;
  }

  ScheduleState createState() => new ScheduleState(barberInfo);
}

class ScheduleState extends State {
  Barber barberInfo;

  ScheduleState(Barber barber) {
    this.barberInfo = barber;
  }

  @override
  Widget build(context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          toolbarHeight: getDeviceHeight(context) * 0.15,
          centerTitle: true,
          title: Text('Agendamento',
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
                  child: Text('Com o Cabelereiro(a): ',
                      style: Theme.of(context).primaryTextTheme.headline6)),
              miniCard(barberInfo.name, barberInfo.avatarUrl, context),
              Expanded(
                  child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: getDeviceHeight(context) * 0.02),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    datePickerBlock(context),
                    timePickerBlock(context),
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
                            onPressed: () => print('fufaaaa'),
                            child: Text('Concluir agendamento',
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
