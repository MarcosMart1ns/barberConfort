import 'package:BarberConfort/src/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:BarberConfort/src/utils/getDeviceInfo.dart';

barberCard(
    String name, String avaliabiltyDays, String avaliabiltySchedule, context) {
  return Container(
      margin: EdgeInsets.only(bottom: getDeviceWidth(context) * 0.05),
      child: Expanded(
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
                      avatar(context),
                      Column(
                        children: [
                          Text(name,
                              style:
                                  Theme.of(context).primaryTextTheme.headline6),
                        ],
                      )
                    ],
                  )),
              color: Theme.of(context).cardColor,
            ),
          )
        ],
      )));
}
