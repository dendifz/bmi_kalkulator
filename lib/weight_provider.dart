import 'package:flutter/material.dart';

class WeightProvider with ChangeNotifier{

  double _weight = 40;

  double get weight => _weight;

  set weight(double value){
    _weight = value;
    notifyListeners();
  }

}