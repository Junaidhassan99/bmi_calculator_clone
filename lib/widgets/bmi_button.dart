import 'package:flutter/material.dart';

class BmiButton extends StatelessWidget {
  final String text;
  const BmiButton(
    this.text,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
