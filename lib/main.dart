import 'package:bmi_calculator_clone/modals/bmi_data.dart';
import 'package:bmi_calculator_clone/screens/homeScreen.dart';
import 'package:bmi_calculator_clone/screens/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(BmiCalculatorApp());
}

class BmiCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BmiData(),
      child: MaterialApp(
        theme: ThemeData(
          textTheme: TextTheme(
            //general tile text size
            bodyText1: TextStyle(fontSize: 18),
            //tile numbers
            bodyText2: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          accentColor: Colors.red,
          brightness: Brightness.dark,
        ),
        // darkTheme: ThemeData(
        //   textTheme: TextTheme(
        //     //general tile text size
        //     bodyText1: TextStyle(fontSize: 18),
        //     //tile numbers
        //     bodyText2: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        //   ),
        //   accentColor: Colors.red,
        //   brightness: Brightness.dark,
        // ),
        // themeMode: ThemeMode.dark,
        home: HomeScreen(),
        //HomeScreen(),
        routes: {
          HomeScreen.routeName: (_) => HomeScreen(),
          ResultsScreen.routeName: (_) => ResultsScreen(),
        },
      ),
    );
  }
}
