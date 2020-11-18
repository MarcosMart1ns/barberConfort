import 'package:BarberConfort/src/widgets/avatar.dart';
import 'package:BarberConfort/src/screens/SchedulePage.dart';
import 'package:flutter/material.dart';
import 'package:BarberConfort/src/utils/getDeviceInfo.dart';
import 'package:BarberConfort/src/model/Barber.dart';

barberCard(
  String key,
  name,
  String avaliabiltyDays,
  String avaliabiltySchedule,
  context, [
  String avatarUrl,
]) {
  return Container(
      margin: EdgeInsets.only(bottom: getDeviceWidth(context) * 0.02),
      child: Row(
        children: [
          Expanded(
            child: Card(
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none),
              child: ListTile(
                  enabled: true,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SchedulePage(new Barber(key, name, avaliabiltyDays,
                          avaliabiltySchedule, avatarUrl));
                    }));
                  },
                  contentPadding: EdgeInsets.symmetric(
                      vertical: getDeviceHeight(context) * 0.01,
                      horizontal: getDeviceWidth(context) * 0.05),
                  leading: SizedBox(
                    width: getDeviceWidth(context) * 0.15,
                    height: getDeviceHeight(context) * 0.14,
                    child: avatar(context, avatarUrl),
                  ),
                  title: Container(
                      padding: EdgeInsets.only(
                          bottom: getDeviceWidth(context) * 0.02),
                      child: Text(name,
                          style: Theme.of(context).primaryTextTheme.headline6)),
                  isThreeLine: true,
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.calendar_today,
                            size: 18,
                            color: Color.fromRGBO(45, 87, 253, 1),
                          ),
                        ),
                        Text(avaliabiltyDays,
                            style: Theme.of(context)
                                .primaryTextTheme
                                .bodyText1
                                .copyWith(fontSize: 16)),
                      ]),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(Icons.access_time,
                                size: 18,
                                color: Color.fromRGBO(45, 87, 253, 1)),
                          ),
                          Text(avaliabiltySchedule,
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .bodyText1
                                  .copyWith(fontSize: 16)),
                        ],
                      )
                    ],
                  )),
              color: Theme.of(context).cardColor,
            ),
          ),
        ],
      ));
}
