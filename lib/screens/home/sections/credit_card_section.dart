import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nubank_refactor/components/row_chevron.dart';
import 'package:nubank_refactor/components/texts.dart';
import 'package:nubank_refactor/utils/colors.dart';
import 'package:nubank_refactor/providers/money.dart';
import 'package:provider/provider.dart';

class CreditCardSection extends StatefulWidget {
  const CreditCardSection({Key? key}) : super(key: key);

  @override
  createState() => _CreditCardSectionState();
}

class _CreditCardSectionState extends State<CreditCardSection> {
  NumberFormat real = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  @override
  Widget build(BuildContext context) {
    final moneyProvider = Provider.of<MoneyProvider>(context);

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
          nuTitle(
            moneyProvider.showMoney ? real.format(moneyProvider.money) : "····",
          ),
          SizedBox(height: 12),
          nuLightText(
            "Limite disponível de ${moneyProvider.showMoney ? real.format(moneyProvider.creditCardLimit) : "····"}",
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
