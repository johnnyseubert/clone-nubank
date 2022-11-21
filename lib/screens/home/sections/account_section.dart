import 'package:flutter/material.dart';
import 'package:nubank_refactor/globalComponents/row_chevron.dart';
import 'package:nubank_refactor/utils/money.dart';

class AccountSection extends StatefulWidget {
  final Money moneyController;

  const AccountSection({
    Key? key,
    required this.moneyController,
  }) : super(key: key);
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
          ValueListenableBuilder<bool>(
            valueListenable: widget.moneyController.showMoneyNotifier,
            builder: (_, show, __) {
              return ValueListenableBuilder<double>(
                valueListenable: widget.moneyController.moneyNotifier,
                builder: (_, money, __) {
                  return show
                      ? Text(
                          "R\$ $money",
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
                        );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
