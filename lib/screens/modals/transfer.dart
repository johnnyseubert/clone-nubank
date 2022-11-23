import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nubank_refactor/globalComponents/dialog_header.dart';
import 'package:nubank_refactor/utils/colors.dart';
import 'package:nubank_refactor/utils/money.dart';
import 'package:provider/provider.dart';

Widget dialogTransfer(
  BuildContext context, {
  double height = 0.95,
}) {
  final modalHeight = MediaQuery.of(context).size.height * height;
  final moneyProvider = Provider.of<MoneyProvider>(context);

  NumberFormat real = NumberFormat.currency(
    locale: 'pt_BR',
    symbol: 'R\$',
  );

  final _formatter = CurrencyTextInputFormatter(
    locale: 'pt_BR',
    decimalDigits: 2,
    symbol: 'R\$',
  );

  return Container(
    width: double.infinity,
    height: modalHeight,
    decoration: BoxDecoration(
      color: nuLight,
      borderRadius: BorderRadiusDirectional.only(
        topStart: Radius.circular(20),
        topEnd: Radius.circular(20),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          dialogHeader(context, icon: Icons.qr_code, color: nuPrimary),
          SizedBox(height: 12),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Text(
              "Qual é o valor da transferência?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 12),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Saldo disponível em conta ",
                  style: TextStyle(color: nuDark),
                ),
                TextSpan(
                  text: real.format(moneyProvider.money),
                  style: TextStyle(
                    color: nuDark,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          TextFormField(
            autofocus: true,
            onEditingComplete: () {
              moneyProvider.money -= _formatter.getUnformattedValue() as double;
              Navigator.pop(context);
            },
            initialValue: _formatter.format("0.0"),
            inputFormatters: [_formatter],
            keyboardType: TextInputType.number,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}
