class DateTimeController {
  String getData(DateTime dateTime) {
    final _date = convertMonth(DateTime.now());
    final _secondDate = convertMonth(dateTime);
    final _month = _date - _secondDate;

    return 'Resultado: ${_month} meses';
  }

  int convertMonth(DateTime dateTime) {
    final _result = (12 * dateTime.year) + dateTime.month;
    return _result;
  }
}
