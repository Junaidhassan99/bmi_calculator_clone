import 'package:flutter/material.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({
    Key key,
  }) : super(key: key);

  @override
  _HeightSelectorState createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double _sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Card(
        color: Colors.black12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 20,),
            Text(
              'Height',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '183',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
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
              value: _sliderValue,
              onChanged: (value) {
                setState(() {
                  print(value);
                  _sliderValue = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
