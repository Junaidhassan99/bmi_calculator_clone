import 'package:bmi_calculator_clone/modals/bmi_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({
    Key key,
  }) : super(key: key);

  @override
  _HeightSelectorState createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double _sliderValue = 0.0;
  int _height = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Card(
        color: Colors.black12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Height',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$_height',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'cm',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            Slider(
              activeColor: Theme.of(context).accentColor,
              value: _sliderValue,
              onChanged: (value) {
                setState(() {
                  print(value);
                  _sliderValue = value;
                  _height = (_sliderValue * 300).round();
                });
                Provider.of<BmiData>(context, listen: false)
                    .setHeight(_height);
              },
            )
          ],
        ),
      ),
    );
  }
}
