import 'package:flutter/material.dart';
import 'package:nubank_refactor/globalComponents/row_chevron.dart';
import 'package:nubank_refactor/globalComponents/texts.dart';

class LoanSection extends StatelessWidget {
  const LoanSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          nuRowChevron(
            "Empréstimo",
            onPressed: () {},
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: nuLightText(
              "Crie um aviso para saber quando um empréstimo ficar disponível.",
            ),
          ),
        ],
      ),
    );
  }
}
