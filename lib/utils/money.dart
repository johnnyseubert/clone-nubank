import 'package:flutter/material.dart';

class Money {
  var moneyNotifier = ValueNotifier<double>(2020.01);
  var creditCardLimitNotifier = ValueNotifier<double>(5050.00);
  var showMoneyNotifier = ValueNotifier<bool>(true);

  double get money => moneyNotifier.value;
  double get creditCardLimit => creditCardLimitNotifier.value;
  bool get showMoney => showMoneyNotifier.value;

  void toggleMoney() => showMoneyNotifier.value = !showMoneyNotifier.value;
}
