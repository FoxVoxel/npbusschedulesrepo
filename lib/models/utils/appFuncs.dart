int dateNowInNumber() {
  final int date = DateTime.now().weekday.toInt()-1;
  return date;
}
