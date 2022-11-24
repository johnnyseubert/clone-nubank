import 'package:flutter/material.dart';
import 'package:nubank_refactor/components/texts.dart';
import 'package:nubank_refactor/utils/colors.dart';

class FollowSection extends StatelessWidget {
  const FollowSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          nuTitle("Acompanhe também"),
          _card(),
        ],
      ),
    );
  }

  Widget _card() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: nuLight,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.replay_outlined),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 100,
                child: Text(
                  "Assistente de pagamentos",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          _newBadge(),
        ],
      ),
    );
  }

  Widget _newBadge() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      decoration: BoxDecoration(
        color: nuPrimary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        "Novo",
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
