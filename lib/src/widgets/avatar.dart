import 'package:flutter/material.dart';
import 'package:BarberConfort/src/utils/getDeviceInfo.dart';

avatar(context) {
  return CircleAvatar(
    radius: getDeviceHeight(context) * 0.05,
    backgroundColor: Colors.white,
  );
}
