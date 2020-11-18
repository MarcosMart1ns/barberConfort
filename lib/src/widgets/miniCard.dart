import 'package:flutter/material.dart';
import 'package:BarberConfort/src/widgets/avatar.dart';
import 'package:BarberConfort/src/utils/getDeviceInfo.dart';

miniCard(String title, String avatarUrl, context) {
  return Card(
    shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide.none),
    child: Container(
      height: getDeviceHeight(context) * 0.08,
      width: getDeviceWidth(context) * 0.50,
      padding: EdgeInsets.symmetric(
          horizontal: getDeviceWidth(context) * 0.03,
          vertical: getDeviceHeight(context) * 0.01),
      child: Row(
        children: [
          SizedBox(
            height: getDeviceHeight(context) * 0.05,
            width: getDeviceWidth(context) * 0.10,
            child: avatar(context, avatarUrl),
          ),
          Container(
            margin: EdgeInsets.only(left: getDeviceWidth(context) * 0.04),
            child: Text(title,
                style: Theme.of(context).primaryTextTheme.bodyText1),
          )
        ],
      ),
    ),
  );
}
