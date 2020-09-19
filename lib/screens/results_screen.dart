import 'package:bmi_calculator_clone/screens/HomeScreen.dart';
import 'package:bmi_calculator_clone/widgets/bmi_button.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  static const routeName = '/results_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 70,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Your Result',
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Normal',
                            style: TextStyle(color: Colors.green, fontSize: 20),
                          ),
                          Text(
                            '22.1',
                            style: TextStyle(fontSize: 60),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Normal BMI range:',
                            style: TextStyle(fontSize: 22),
                          ),
                          Text(
                            '18.5-25 kg/m2',
                            style: TextStyle(fontSize: 22),
                          ),
                        ],
                      ),
                      Text(
                        'You have a normal body weight. Good job!',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 2,
              ),
            ),
            Expanded(
              child: GestureDetector(
                child: BmiButton('Re-CALCULATE BMI'),
                onTap: () =>
                    Navigator.of(context).pushReplacementNamed(HomeScreen.routeName),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
