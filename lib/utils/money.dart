import 'package:flutter/material.dart';

class Money {
  var moneyNotifier = ValueNotifier<double>(856723.01);
  var creditCardLimitNotifier = ValueNotifier<double>(5050.00);
  var showMoneyNotifier = ValueNotifier<bool>(true);

  double get creditCardLimit => creditCardLimitNotifier.value;
  bool get showMoney => showMoneyNotifier.value;

  double get money => moneyNotifier.value;
  set money(double newValue) {
    moneyNotifier.value = newValue;
  }

  void toggleMoney() => showMoneyNotifier.value = !showMoneyNotifier.value;
}
