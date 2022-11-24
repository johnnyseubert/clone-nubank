import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nubank_refactor/components/row_chevron.dart';
import 'package:nubank_refactor/providers/money.dart';
import 'package:provider/provider.dart';

class AccountSection extends StatefulWidget {
  const AccountSection({Key? key}) : super(key: key);
  @override
  createState() => _AccountSectionState();
}

class _AccountSectionState extends State<AccountSection> {
  NumberFormat real = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  @override
  Widget build(BuildContext context) {
    final moneyProvider = Provider.of<MoneyProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        nuRowChevron("Conta", onPressed: () {}),
        SizedBox(height: 12),
        moneyProvider.showMoney
            ? Text(
                real.format(moneyProvider.money),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              )
            : Text(
                "····",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ]),
    );
  }
}
