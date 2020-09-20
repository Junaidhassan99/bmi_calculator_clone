import 'dart:async';

import 'package:bmi_calculator_clone/modals/bmi_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum WeightAndAgeEnum {
  Weight,
  Age,
}

class WeightAndAge extends StatefulWidget {
  @override
  _WeightAndAgeState createState() => _WeightAndAgeState();
}

class _WeightAndAgeState extends State<WeightAndAge> {
  int _weight = 0;

  int _age = 0;

  Timer timerInc;
  Timer timerDec;

  Widget _renderTileNumericText(int value, String unit) {
    return Row(
      //crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$value',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        Container(
          padding: EdgeInsets.only(top: 8, left: 2),
          child: Text(
            unit,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }

  void _onTapIncrement(WeightAndAgeEnum weightAndAgeEnum) {
    if (weightAndAgeEnum == WeightAndAgeEnum.Weight) {
      setState(() {
        _weight++;
      });
      Provider.of<BmiData>(context, listen: false).setWeight(_weight);
    } else if (weightAndAgeEnum == WeightAndAgeEnum.Age) {
      setState(() {
        _age++;
      });
      Provider.of<BmiData>(context, listen: false).setAge(_age);
    }
  }

  void _onTapDecrement(WeightAndAgeEnum weightAndAgeEnum) {
    if (weightAndAgeEnum == WeightAndAgeEnum.Weight && _weight > 0) {
      setState(() {
        _weight--;
      });
      Provider.of<BmiData>(context, listen: false).setWeight(_weight);
    } else if (weightAndAgeEnum == WeightAndAgeEnum.Age && _age > 0) {
      setState(() {
        _age--;
      });
      Provider.of<BmiData>(context, listen: false).setAge(_age);
    }
  }

  Widget _weightAndHeightWidget(
      BuildContext context, WeightAndAgeEnum weightAndAgeEnum) {
    return Expanded(
      child: Container(
        height: 150,
        child: Card(
          color: Colors.black12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                weightAndAgeEnum == WeightAndAgeEnum.Weight ? 'Weight' : 'Age',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Container(
                  child: weightAndAgeEnum == WeightAndAgeEnum.Weight
                      ? _renderTileNumericText(_weight, 'kg')
                      : _renderTileNumericText(_age, 'y')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Icon(Icons.remove),
                    onTapCancel: () {
                      print('cancel');
                      timerDec.cancel();
                    },
                    onTapDown: (TapDownDetails details) {
                      print('down');
                      timerDec =
                          Timer.periodic(Duration(milliseconds: 200), (t) {
                        _onTapDecrement(weightAndAgeEnum);
                      });
                    },
                    onTapUp: (TapUpDetails details) {
                      print('up');
                      timerDec.cancel();
                    },
                    onTap: () {
                      _onTapDecrement(weightAndAgeEnum);
                    },
                  ),
                  GestureDetector(
                    child: Icon(Icons.add),
                    onTapCancel: () {
                      print('cancel');
                      timerInc.cancel();
                    },
                    onTapDown: (TapDownDetails details) {
                      print('down');
                      timerInc =
                          Timer.periodic(Duration(milliseconds: 200), (t) {
                        _onTapIncrement(weightAndAgeEnum);
                      });
                    },
                    onTapUp: (TapUpDetails details) {
                      print('up');
                      timerInc.cancel();
                    },
                    onTap: () {
                      _onTapIncrement(weightAndAgeEnum);
                    },
                  ),
                ],
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
          _weightAndHeightWidget(context, WeightAndAgeEnum.Weight),
          _weightAndHeightWidget(context, WeightAndAgeEnum.Age),
        ],
      ),
    );
  }
}
