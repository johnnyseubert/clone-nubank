import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_refactor/providers/user.dart';
import 'package:nubank_refactor/utils/colors.dart';
import 'package:nubank_refactor/providers/money.dart';
import 'package:provider/provider.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({Key? key}) : super(key: key);
  @override
  createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: nuPrimary,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 16, 8, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _profile(),
                _options(context),
              ],
            ),
            _welcome(context),
          ],
        ),
      ),
    );
  }

  GestureDetector _profile() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: nuSecondary,
        ),
        child: IconButton(
          icon: Icon(
            MdiIcons.account,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  Row _options(BuildContext context) {
    final moneyProvider = Provider.of<MoneyProvider>(context);

    return Row(
      children: [
        IconButton(
          icon: Icon(
            moneyProvider.showMoney ? MdiIcons.eye : MdiIcons.eyeOff,
            color: Colors.white,
          ),
          onPressed: () => moneyProvider.toggleMoney(),
        ),
        IconButton(
          icon: Icon(
            Icons.help_outline,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.person_add_alt_1_outlined,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Container _welcome(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    return Container(
      margin: const EdgeInsets.only(top: 32),
      child: Text(
        "Olá, ${userProvider.name}",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
