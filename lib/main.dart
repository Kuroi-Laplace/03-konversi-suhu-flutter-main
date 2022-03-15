import 'package:flutter/material.dart';
import 'package:praktikum3/component/Convert.dart';
import 'package:praktikum3/component/Input.dart';
import 'package:praktikum3/component/Result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  final TextEditingController _inputUser = TextEditingController();
  double _kelvin = 0;
  double _celcius = 0;
  double _reamur = 0;
  void _konversiSuhu() {
    setState(() {
      _celcius = double.parse(_inputUser.text);
      _reamur = (4 * _celcius) / 5;
      _kelvin = _celcius + 273;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Konversi Suhu - 2031710127 Neha Viranica Nauly',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konversi Suhu\n2031710127 Neha Viranica Nauly"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Input(inputUser: _inputUser),
              Result(kelvin: _kelvin, reamur: _reamur),
              Convert(
                convertHandler: _konversiSuhu,
              )
            ],
          ),
        ),
      ),
    );
  }
}
