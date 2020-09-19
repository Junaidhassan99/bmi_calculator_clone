import 'package:flutter/material.dart';

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
              Text(
                weightAndAgeEnum == WeightAndAgeEnum.Weight ? '$_weight' : '$_age',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      if (weightAndAgeEnum == WeightAndAgeEnum.Weight &&
                          _weight > 0) {
                        setState(() {
                          _weight--;
                        });
                      } else if (weightAndAgeEnum == WeightAndAgeEnum.Age &&
                          _age > 0) {
                        setState(() {
                          _age--;
                        });
                      }
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      if (weightAndAgeEnum == WeightAndAgeEnum.Weight) {
                        setState(() {
                          _weight++;
                        });
                      } else if (weightAndAgeEnum == WeightAndAgeEnum.Age) {
                        setState(() {
                          _age++;
                        });
                      }
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
