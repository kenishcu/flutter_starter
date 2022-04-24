import 'package:intl/intl.dart';
import 'package:money2/money2.dart';

String formatPrice(int price) {
  var f = NumberFormat('###,###');
  return f.format(price);
}

String convertFromUnixToTimeString(int timeUnix) {
  DateTime date = DateTime.fromMillisecondsSinceEpoch(timeUnix * 1000);
  String formattedDate = DateFormat('dd/MM/yyyy').format(date);
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

String _formatPrice(int price) {
  if(price == 0) {
    return price.toString() + ' đ';
  }
  final vnd = Currency.create('VND', 3,
      symbol: 'đ', invertSeparators: true, pattern: '#.##0,000 S');
  return Money.fromIntWithCurrency(price, vnd, scale: 3).toString();
}