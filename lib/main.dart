import 'package:flutter/material.dart';

import 'input.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF241056),
        ),
        primaryColor: const Color(0xFF270082),
        scaffoldBackgroundColor: const Color(0xFF3b2763),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: const Input(title: 'bmi calculator'),
    );
  }
}
