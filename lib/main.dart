import 'package:calcular_meses/src/controller/date_time_controller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var dateTimeController = DateTimeController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(dateTimeController.getData(DateTime.utc(2019, 04, 20)))
            ],
          ),
        ),
      ),
    );
  }
}
