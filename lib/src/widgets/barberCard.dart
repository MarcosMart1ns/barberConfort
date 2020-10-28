import 'package:BarberConfort/src/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:BarberConfort/src/utils/getDeviceInfo.dart';

barberCard(
  String name,
  String avaliabiltyDays,
  String avaliabiltySchedule,
  context, [
  String avatarUrl,
]) {
  return Container(
      margin: EdgeInsets.only(bottom: getDeviceWidth(context) * 0.05),
      child: Row(
        children: [
          Expanded(
            child: Card(
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none),
              child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: getDeviceWidth(context) * 0.05),
                  margin: EdgeInsets.symmetric(
                      horizontal: getDeviceWidth(context) * 0.05),
                  child: Row(
                    children: [
                      avatar(context, avatarUrl),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text(name,
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline6),
                            ),
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
                        ),
                      ),
                    ],
                  )),
              color: Theme.of(context).cardColor,
            ),
          )
        ],
      ));
}
