class DateTimeController {
  String getData(DateTime dateTime) {
    final _result = (DateTime.now().year - dateTime.year) * 12;
    return _result.toString();
    // final _date = convertMonth(DateTime.now());
    // final _secondDate = convertMonth(dateTime);
    // final _month = _date - _secondDate;
    // if (_month > 60) {
    //   return 'A criança ja tem idade superior a 60 meses.';
    // } else {
    //   return 'A criança tem ${_month} meses';
    // }
  }

  // int convertMonth(DateTime dateTime) {
  //   final _result = (12 * dateTime.year) + dateTime.month;
  //   return _result;
  // }
}
