import 'package:bmi_calculator_clone/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BmiCalculatorApp());
}

class BmiCalculatorApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      home: HomeScreen(),
    );
  }
}
