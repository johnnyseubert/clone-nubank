import 'package:flutter/material.dart';

class MoneyProvider with ChangeNotifier {
  double _money = 856723.01;
  double _creditCardLimit = 5050.00;
  bool _showMoney = true;

  double get money => _money;
  double get creditCardLimit => _creditCardLimit;
  bool get showMoney => _showMoney;

  void toggleMoney() {
    _showMoney = !_showMoney;
    notifyListeners();
  }

  set money(double newValue) {
    _money = newValue;
    notifyListeners();
  }

  set creditCardLimit(double newLimit) {
    _creditCardLimit = newLimit;
    notifyListeners();
  }
}
