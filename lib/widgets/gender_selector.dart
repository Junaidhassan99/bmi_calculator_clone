import 'package:bmi_calculator_clone/icons/gend_icons.dart';
import 'package:flutter/material.dart';

enum GenderEnum {
  MALE,
  FEMALE,
}

class GenderSelector extends StatelessWidget {
  Widget _genderTileWidget(BuildContext context, GenderEnum gender) {
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
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          _genderTileWidget(context, GenderEnum.MALE),
          _genderTileWidget(context, GenderEnum.FEMALE),
        ],
      ),
    );
  }
}
