
import 'package:flutter/material.dart';

class BmiResults {
  String _resultStatus = '-';
  double _bmiResultData = 0;
  String _resultMessage = '-';
  Color _resultStatusColor = Colors.green;

  String get getResultStatus {
    return _resultStatus;
  }

  String get getResultMessage {
    return _resultMessage;
  }

  double get getBmiResultData {
    return _bmiResultData;
  }

  Color get getResultStatusColor {
    return _resultStatusColor;
  }

  BmiResults(this._bmiResultData) {
    if (_bmiResultData < 18.5) {
      _resultStatus = 'Low';
      _resultMessage = 'You have a low body weight.';
      _resultStatusColor = Colors.yellow;
    } else if (_bmiResultData > 25) {
      _resultStatus = 'High';
      _resultMessage = 'You have a high body weight.';
      _resultStatusColor = Colors.red;
    } else {
      _resultStatus = 'Normal';
      _resultMessage = 'You have a normal body weight.Good job!';
      _resultStatusColor = Colors.green;
    }
  }
}
