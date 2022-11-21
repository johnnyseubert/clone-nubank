import 'package:flutter/material.dart';
import 'package:nubank_refactor/globalComponents/row_chevron.dart';
import 'package:nubank_refactor/globalComponents/texts.dart';
import 'package:nubank_refactor/utils/colors.dart';
import 'package:nubank_refactor/utils/money.dart';

class CreditCardSection extends StatelessWidget {
  final Money moneyController;

  const CreditCardSection({
    Key? key,
    required this.moneyController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12),
          nuRowChevron("Cartão de crédito", onPressed: () {}),
          SizedBox(height: 12),
          nuLightText("Fatura Atual"),
          SizedBox(height: 12),
          ValueListenableBuilder<bool>(
            valueListenable: moneyController.showMoneyNotifier,
            builder: (_, show, __) {
              return ValueListenableBuilder<double>(
                valueListenable: moneyController.creditCardLimitNotifier,
                builder: (___, money, ____) {
                  return nuTitle(show ? "R\$ $money" : "····");
                },
              );
            },
          ),
          SizedBox(height: 12),
          ValueListenableBuilder<bool>(
            valueListenable: moneyController.showMoneyNotifier,
            builder: (_, show, __) {
              return ValueListenableBuilder(
                valueListenable: moneyController.creditCardLimitNotifier,
                builder: (___, value, _____) {
                  return nuLightText(
                    "Limite disponível de R\$ ${show ? value : "····"}",
                  );
                },
              );
            },
          ),
          SizedBox(height: 12),
          _buys(),
        ],
      ),
    );
  }

  Widget _buys() {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        splashFactory: NoSplash.splashFactory,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: nuLight,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text("Parcelar compras", style: TextStyle(color: nuDark)),
      ),
    );
  }
}
