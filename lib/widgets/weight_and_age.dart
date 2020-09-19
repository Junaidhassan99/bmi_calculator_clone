import 'package:flutter/material.dart';

enum WeightAndAgeEnum {
  Weight,
  Age,
}

class WeightAndAge extends StatelessWidget {
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
                weightAndAgeEnum == WeightAndAgeEnum.Weight ? '79' : '19',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: null,
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: null,
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
          _weightAndHeightWidget(context,WeightAndAgeEnum.Weight),
           _weightAndHeightWidget(context,WeightAndAgeEnum.Age),
        ],
      ),
    );
  }
}
