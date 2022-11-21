import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_refactor/utils/colors.dart';

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
                _options(),
              ],
            ),
            _welcome(),
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

  Row _options() {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            MdiIcons.eye,
            color: Colors.white,
          ),
          onPressed: () {},
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

  Container _welcome() {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      child: const Text(
        "Olá, Johnny",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
