import 'package:bmi_calculator_clone/modals/bmi_data.dart';
import 'package:bmi_calculator_clone/screens/results_screen.dart';
import 'package:bmi_calculator_clone/widgets/bmi_button.dart';
import 'package:bmi_calculator_clone/widgets/gender_selector.dart';
import 'package:bmi_calculator_clone/widgets/height_selector.dart';
import 'package:bmi_calculator_clone/widgets/weight_and_age.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          GenderSelector(),
          HeightSelector(),
          WeightAndAge(),
          Expanded(
            child: GestureDetector(
              child: BmiButton('CALCULATE BMI'),
              onTap: () {
                Provider.of<BmiData>(context, listen: false).test();
                double _result=Provider.of<BmiData>(context, listen: false).calculateCurrentBmi();
                Provider.of<BmiData>(context, listen: false).resetValues();
                Navigator.of(context)
                    .pushReplacementNamed(ResultsScreen.routeName,arguments: _result);
              },
            ),
          ),
        ],
      ),
    );
  }
}
