import 'package:bmi_calculator_clone/icons/gend_icons.dart';
import 'package:flutter/material.dart';

enum GenderEnum {
  MALE,
  FEMALE,
}

class GenderSelector extends StatelessWidget {
  final GenderEnum gender;
  GenderSelector(this.gender);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 150,
        //width: MediaQuery.of(context).size.width * 0.5,
        child: Card(
          color: Colors.black12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                gender == GenderEnum.MALE ? Gend.male : Gend.female,
                size: 50,
              ),
              Text(
                gender == GenderEnum.MALE ? 'MALE' : 'FEMALE',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
