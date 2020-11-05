import 'package:flutter/material.dart';
import 'package:BarberConfort/src/utils/getDeviceInfo.dart';

Widget datePickerBlock(context) {
  return Expanded(
    child: Container(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Na data: ',
              style: Theme.of(context).primaryTextTheme.headline6),
          Container(
            margin:
                EdgeInsets.symmetric(vertical: getDeviceHeight(context) * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:
                      EdgeInsets.only(bottom: getDeviceHeight(context) * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('28/10/2020 ',
                          style: Theme.of(context).primaryTextTheme.headline6),
                      RaisedButton(
                          padding: EdgeInsets.all(10),
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none),
                          onPressed: () => print('fufaaaa'),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Selecione uma data ',
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
  );
}
