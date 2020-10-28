import 'package:flutter/material.dart';
import 'package:BarberConfort/src/utils/getDeviceInfo.dart';

avatar(context, [String avatarUrl]) {
  if (avatarUrl != null) {
    return CircleAvatar(
      backgroundImage: NetworkImage(avatarUrl),
      radius: getDeviceHeight(context) * 0.05,
      backgroundColor: Colors.white,
    );
  }
  return CircleAvatar(
    radius: getDeviceHeight(context) * 0.05,
    backgroundColor: Colors.white,
  );
}
