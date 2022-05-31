class DateTimeController {
  String getData(DateTime dateTime) {
    final _date = convertMonth(DateTime.now());
    final _secondDate = convertMonth(dateTime);
    return '${_date - _secondDate}';
  }

  int convertMonth(DateTime dateTime) {
    final _result = 12 * dateTime.year + dateTime.month;
    return _result;
  }
}
