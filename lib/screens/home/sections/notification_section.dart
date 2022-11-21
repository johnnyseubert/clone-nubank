import 'package:flutter/material.dart';
import 'package:nubank_refactor/utils/colors.dart';

class NotificationSection extends StatelessWidget {
  const NotificationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Row(
          children: [
            _income(
              context,
              "Seu *|informe de rendimentos* de *|2022* já está disponível!",
            ),
            _income(
              context,
              "Chegou o *|débito automatico da* Fatura do cartão",
            ),
            _income(
              context,
              "Salve seus amigos *|da burocracia* Faça um pix!",
            ),
          ],
        ),
      ),
    );
  }

  Widget _income(BuildContext context, String text) {
    var listaString = text.split("*");

    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(24),
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        color: nuLight,
        borderRadius: BorderRadius.circular(8),
      ),
      child: RichText(
        text: TextSpan(
          children: listaString.map((e) {
            bool isPurple = e[0].contains("|");

            return TextSpan(
              text: isPurple ? e.replaceAll("|", "") : e,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: isPurple ? nuPrimary : nuDark,
                fontSize: 14,
              ),
            );
          }).toList(),
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    );
  }
}
