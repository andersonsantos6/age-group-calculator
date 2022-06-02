import 'package:calcular_meses/src/controller/date_time_controller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DateTime _date = DateTime.utc(2016, 1, 1);
  var _currentDay = DateTime.now();
  var dateTimeController = DateTimeController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Calculador de Meses'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    height: 50,
                    child: Image.asset('lib/src/assets/calendar.png'),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Hoje é ${_currentDay.day}/${_currentDay.month}/${_currentDay.year}',
                    style: const TextStyle(fontSize: 12),
                  )
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Text('Data Selecionada:'),
                    Text(
                      '${_date.day}/${_date.month}/${_date.year}',
                      style: const TextStyle(fontSize: 32),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        DateTime? _newDate = await showDatePicker(
                            context: context,
                            initialDate: _date,
                            firstDate: DateTime.utc(2000, 1, 1),
                            lastDate: DateTime.now());
                        if (_newDate == null) return;
                        setState(
                          () {
                            _date = _newDate;
                          },
                        );
                      },
                      child: const Text(
                        'Selecionar data de nascimento',
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Card(
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          dateTimeController.getData(_date),
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Obs: O cálculo de meses é obtido através de arredondamento para cima. podendo ocorrer uma margem de erro de 1 mês para mais ou para menos.',
                        style: TextStyle(color: Colors.red, fontSize: 12),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.computer,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Desenvolvido por Anderson Santos.',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.message,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                              'andersonsantos.programer@gmail.com - @andersonsantos.dev'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
