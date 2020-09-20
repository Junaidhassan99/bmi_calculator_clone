import 'package:bmi_calculator_clone/widgets/gender_selector.dart';
import 'package:flutter/cupertino.dart';

class BmiData with ChangeNotifier {
  GenderEnum _gender = GenderEnum.Male;
  int _height = 0;
  int _weight = 0;
  int _age = 0;

  void setGender(GenderEnum mGenderEnum) {
    _gender = mGenderEnum;
    notifyListeners();
  }

  void setHeight(int mHeight) {
    _height = mHeight;
    notifyListeners();
  }

  void setWeight(int mWeight) {
    _weight = mWeight;
    notifyListeners();
  }

  void setAge(int mAge) {
    _age = mAge;
    notifyListeners();
  }

  void resetValues() {
    _gender = GenderEnum.Male;
    _height = 0;
    _weight = 0;
    _age = 0;
  }

  double calculateCurrentBmi() {
    double _bmi;
    if (_height != 0&&_weight!=0) {
      
      _bmi = _weight / (_height/100 * _height/100);
    } else {
      _bmi = 0;
    }
    return _bmi;
  }

  void test() {
    print('_gender=$_gender');
    print('_weight=$_weight');
    print('_age=$_age');
    print('_height=$_height');
  }
}
