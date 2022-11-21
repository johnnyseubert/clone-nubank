import 'package:flutter/material.dart';
import 'package:nubank_refactor/globalComponents/row_chevron.dart';
import 'package:nubank_refactor/utils/money.dart';

class AccountSection extends StatefulWidget {
  const AccountSection({Key? key}) : super(key: key);
  @override
  createState() => _AccountSectionState();
}

class _AccountSectionState extends State<AccountSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          nuRowChevron("Conta", onPressed: () {}),
          SizedBox(height: 12),
          _money(),
        ],
      ),
    );
  }

  Widget _money() {
    return Text(
      "R\$ ${Money().value}",
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    );
  }
}
