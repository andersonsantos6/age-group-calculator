import 'package:calcular_meses/src/controller/date_time_controller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DateTime _date = DateTime.utc(2016, 1, 1);
  var dateTimeController = DateTimeController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${_date.day}/${_date.month}/${_date.year}',
                style: const TextStyle(fontSize: 32),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  DateTime? _newDate = await showDatePicker(
                      context: context,
                      initialDate: _date,
                      firstDate: DateTime.utc(2016, 1, 1),
                      lastDate: DateTime.now());
                  if (_newDate == null) return;
                  setState(
                    () {
                      _date = _newDate;
                    },
                  );
                },
                child: const Text('Selecionar data de nascimento'),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(dateTimeController.getData(_date))
            ],
          ),
        ),
      ),
    );
  }
}
