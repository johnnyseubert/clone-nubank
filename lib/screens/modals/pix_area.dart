import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_refactor/globalComponents/dialog_header.dart';
import 'package:nubank_refactor/globalComponents/menu.dart';
import 'package:nubank_refactor/screens/modals/qr_copy_paste.dart';
import 'package:nubank_refactor/screens/modals/transfer.dart';
import 'package:nubank_refactor/utils/colors.dart';

Widget dialogPixArea(
  BuildContext context, {
  double height = 0.95,
}) {
  final modalHeight = MediaQuery.of(context).size.height * height;

  return Container(
    width: double.infinity,
    height: modalHeight,
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          dialogHeader(context, icon: Icons.question_mark_outlined),
          SizedBox(height: 12),
          _title(context, text: "Área Pix"),
          SizedBox(height: 12),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Text(
              "Envie e receba pagamentos a qualquer hora e dia da semana, sem pagar nada por isso.",
              style: TextStyle(color: nuMedium, fontSize: 18),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(height: 12),
          _title(context, text: "Enviar"),
          SizedBox(height: 12),
          _menus(context),
          SizedBox(height: 12),
          _title(context, text: "Receber"),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                nuMenuIcon(
                  icon: Icons.insert_comment_outlined,
                  text: "Cobrar",
                ),
                SizedBox(width: 40),
                nuMenuIcon(
                  icon: MdiIcons.cashFast,
                  text: "Depositar",
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

SingleChildScrollView _menus(BuildContext context) {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          nuMenuIcon(
            icon: MdiIcons.cash,
            text: "Transferir",
            ontap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (ctx) {
                  return dialogTransfer(ctx, height: 0.9);
                },
              );
            },
          ),
          nuMenuIcon(
            icon: Icons.copy,
            text: "Pix Copia e Cola",
            ontap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (ctx) {
                  return dialogQrCopyPaste(ctx, height: 0.9);
                },
              );
            },
          ),
          nuMenuIcon(icon: Icons.qr_code, text: "Ler QR Code"),
        ],
      ),
    ),
  );
}

Widget _title(BuildContext context, {String? text}) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.8,
    child: Text(
      text ?? "Sem texto informado",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
