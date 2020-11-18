import 'package:flutter/material.dart';

String formatDate(DateTime date) {
  String formated = date.toLocal().toString().split(' ')[0];
  List<String> dateSplited = formated.split('-');

  return '${dateSplited[2]}/${dateSplited[1]}/${dateSplited[0]}';
  //output dd/mm/yyyy
}

String formatDateFullName(DateTime date) {
  String formated = date.toLocal().toString().split(' ')[0];
  List<String> dateSplited = formated.split('-');
  String month;

  switch (dateSplited[1]) {
    case '1':
      month = 'Janeiro';
      break;
    case '2':
      month = 'Fevereiro';
      break;
    case '3':
      month = 'Março';
      break;
    case '4':
      month = 'Abril';
      break;
    case '5':
      month = 'Maio';
      break;
    case '6':
      month = 'Junho';
      break;
    case '7':
      month = 'Julho';
      break;
    case '8':
      month = 'Agosto';
      break;
    case '9':
      month = 'Setembro';
      break;
    case '10':
      month = 'Outubro';
      break;
    case '11':
      month = 'Novembro';
      break;
    case '12':
      month = 'Dezembro';
      break;
    default:
      throw Error();
  }

  return '${dateSplited[2]} de $month de ${dateSplited[0]}';
}

String formatHour(TimeOfDay time, context) {
  return time.format(context);
}

String weekdayController(int weekday) {
  switch (weekday) {
    case 1:
      return 'Segunda-Feira';
      break;
    case 2:
      return 'Terça-Feira';
      break;
    case 3:
      return 'Quarta-Feira';
      break;
    case 4:
      return 'Quinta-Feira';
      break;
    case 5:
      return 'Sexta-Feira';
      break;
    case 6:
      return 'Sábado';
      break;
    case 7:
      return 'Domingo';
      break;
    default:
      throw Error();
  }
}

//outputs in 2012-02-27 13:27:00 format
String dateAndTimeToUnic(String date, String time) {
  var dateFormated = date.split('/');

  return '${dateFormated[2]}-${dateFormated[1]}-${dateFormated[0]} $time:00';
}
