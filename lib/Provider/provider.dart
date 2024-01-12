import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SliderProvider with ChangeNotifier{

  double _valp = 0.5;
  double get valp => _valp;

  void setValue(double val){
    _valp = val;
    notifyListeners();
  }
}