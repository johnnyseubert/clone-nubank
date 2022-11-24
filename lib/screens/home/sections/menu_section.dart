import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_refactor/components/menu.dart';
import 'package:nubank_refactor/screens/modals/pix_area.dart';
import 'package:nubank_refactor/screens/modals/transfer.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            nuMenuIcon(
              icon: Icons.pix,
              text: "Área Pix",
              isFirst: true,
              ontap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (ctx) {
                    return dialogPixArea(ctx);
                  },
                );
              },
            ),
            nuMenuIcon(icon: MdiIcons.barcode, text: "Pagar"),
            nuMenuIcon(
              icon: MdiIcons.cash,
              text: "Transferir",
              ontap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (ctx) {
                    return dialogTransfer(ctx);
                  },
                );
              },
            ),
            nuMenuIcon(icon: MdiIcons.cashFast, text: "Depositar"),
            nuMenuIcon(icon: MdiIcons.creditCard, text: "Recarga"),
            nuMenuIcon(icon: MdiIcons.heartOutline, text: "Doação"),
          ],
        ),
      ),
    );
  }
}
