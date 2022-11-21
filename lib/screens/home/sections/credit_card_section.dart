import 'package:flutter/material.dart';
import 'package:nubank_refactor/globalComponents/row_chevron.dart';
import 'package:nubank_refactor/globalComponents/texts.dart';
import 'package:nubank_refactor/utils/colors.dart';
import 'package:nubank_refactor/utils/money.dart';

class CreditCardSection extends StatelessWidget {
  const CreditCardSection({Key? key}) : super(key: key);

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
          nuTitle("R\$ ${Money().creditCardLimit}"),
          SizedBox(height: 12),
          nuLightText("Limite disponível de R\$ ${Money().creditCardLimit}"),
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
