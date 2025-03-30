import 'package:flutter/material.dart';

class CounterPov with ChangeNotifier {
  int number = 0;
  void increase() {
    number++;
    notifyListeners();
  }

  void decrease() {
    if (number > 0) {
      number--;
      notifyListeners();
    }
  }
}
