import 'package:bmi_calculator_clone/icons/gend_icons.dart';
import 'package:flutter/material.dart';

enum GenderEnum {
  Male,
  Female,
}

class GenderSelector extends StatefulWidget {
  @override
  _GenderSelectorState createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  GenderEnum _selectedGender = GenderEnum.Male;

  Widget _genderTileWidget(BuildContext context, GenderEnum gender) {
    return Container(
      height: 150,
      child: Card(
        color: _selectedGender == gender ? Colors.blue : Colors.black12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              gender == GenderEnum.Male ? Gend.male : Gend.female,
              size: 50,
            ),
            Text(
              gender == GenderEnum.Male ? 'MALE' : 'FEMALE',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
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
          Expanded(
            child: GestureDetector(
              child: _genderTileWidget(context, GenderEnum.Male),
              onTap: () {
                setState(() {
                  _selectedGender = GenderEnum.Male;
                });
                print('male');
              },
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: _genderTileWidget(context, GenderEnum.Female),
              onTap: () {
                setState(() {
                  _selectedGender = GenderEnum.Female;
                });
                print('Fe-male');
              },
            ),
          )
        ],
      ),
    );
  }
}
