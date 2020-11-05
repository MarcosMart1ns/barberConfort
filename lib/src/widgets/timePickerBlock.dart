import 'package:flutter/material.dart';
import 'package:BarberConfort/src/utils/getDeviceInfo.dart';

Widget timePickerBlock(context) {
  return Expanded(
    child: Container(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('No horário: ',
              style: Theme.of(context).primaryTextTheme.headline6),
          Container(
            margin:
                EdgeInsets.symmetric(vertical: getDeviceHeight(context) * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('18:00',
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
                        Text('Selecione um horário ',
                            style: Theme.of(context).primaryTextTheme.button),
                        Icon(Icons.access_time),
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
