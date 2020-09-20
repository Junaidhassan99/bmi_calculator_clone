import 'package:bmi_calculator_clone/modals/bmi_results.dart';
import 'package:bmi_calculator_clone/screens/HomeScreen.dart';
import 'package:bmi_calculator_clone/widgets/bmi_button.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  static const routeName = '/results_screen';
  static const _defaultMargin = EdgeInsets.all(5);

  @override
  Widget build(BuildContext context) {
    final double _resultBmi =
        ModalRoute.of(context).settings.arguments as double;

    BmiResults _bmiResults = BmiResults(_resultBmi);

    print(_resultBmi);
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 70,
              margin: _defaultMargin,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: Text(
                'Your Result',
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              child: Card(
                margin: _defaultMargin,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            '${_bmiResults.getResultStatus}',
                            style: TextStyle(color: _bmiResults.getResultStatusColor, fontSize: 20),
                          ),
                          Text(
                            '${_bmiResults.getBmiResultData.toStringAsFixed(1)}',
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
                        '${_bmiResults.getResultMessage}',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: BmiButton('RE-CALCULATE BMI'),
              onTap: () => Navigator.of(context)
                  .pushReplacementNamed(HomeScreen.routeName),
            ),
          ),
        ],
      ),
    );
  }
}
