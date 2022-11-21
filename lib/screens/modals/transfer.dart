import 'package:flutter/material.dart';
import 'package:nubank_refactor/globalComponents/dialog_header.dart';
import 'package:nubank_refactor/utils/colors.dart';

Widget dialogTransfer(BuildContext context, {double height = 0.95}) {
  final modalHeight = MediaQuery.of(context).size.height * height;

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
          _saldo("Saldo disponível em conta ", "R\$ 1.000,00"),
          SizedBox(height: 12),
          TextFormField(
            autofocus: true,
            onEditingComplete: () {},
            initialValue: "R\$ 0,00",
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

RichText _saldo(String text, String price) {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: text,
          style: TextStyle(color: nuDark),
        ),
        TextSpan(
          text: price,
          style: TextStyle(color: nuDark, fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}
