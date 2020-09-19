import 'package:bmi_calculator_clone/widgets/gender_selector.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            GenderSelector(GenderEnum.MALE),
            GenderSelector(GenderEnum.FEMALE),
          ],
        ),
      ),
    );
  }
}
