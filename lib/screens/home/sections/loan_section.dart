import 'package:flutter/material.dart';
import 'package:nubank_refactor/components/row_chevron.dart';
import 'package:nubank_refactor/components/texts.dart';

class LoanSection extends StatelessWidget {
  const LoanSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
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
