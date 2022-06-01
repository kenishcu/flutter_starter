import 'package:intl/intl.dart';
import 'package:money2/money2.dart';


String convertFromUnixToTimeString(int timeUnix) {
  DateTime date = DateTime.fromMillisecondsSinceEpoch(timeUnix * 1000);
  String formattedDate = DateFormat('dd/MM/yyyy').format(date);
  return formattedDate.toString();
}

String convertFromUnixToDatetime(int timeUnix) {
  DateTime date = DateTime.fromMillisecondsSinceEpoch(timeUnix * 1000);
  String formattedDate = DateFormat('HH:mm , dd-MM-yyyy').format(date);
  return formattedDate.toString();
}

bool isSameDay(int timeUnixFromMillisecond, int timeUnixFromSecond) {
  DateTime date1 = DateTime.fromMillisecondsSinceEpoch(timeUnixFromSecond * 1000);
  DateTime date2 = DateTime.fromMillisecondsSinceEpoch(timeUnixFromMillisecond);
  if(date1.difference(date2).inDays == 0){
    return true;
  }
  return false;
}

String formatPrice(int price) {
  if(price == 0) {
    return price.toString() + ' đ';
  }
  final vnd = Currency.create('VND', 3,
      symbol: 'đ', invertSeparators: true, pattern: '#.##0,000 S');
  return Money.fromIntWithCurrency(price, vnd, scale: 3).toString();
}

String formatMoney(int price) {
  if(price == 0) {
    return price.toString();
  }
  final vnd = Currency.create('VND', 3,
      symbol: 'đ', invertSeparators: true, pattern: '#.##0,000');
  return Money.fromIntWithCurrency(price, vnd, scale: 3).toString();
}

String formatTime(DateTime time) {
  String formattedDate = DateFormat('dd-MM-yyyy').format(time);
  return formattedDate;
}

int timeToTimeStamp(DateTime dateTime) {
  DateTime startDate = DateTime(dateTime.year, dateTime.month, dateTime.day, 0, 0 , 1);
  var ms = startDate.millisecondsSinceEpoch;
  int timeOrder = (ms / 1000).round();
  return timeOrder;
}
