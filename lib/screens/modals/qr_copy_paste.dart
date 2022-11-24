import 'package:flutter/material.dart';
import 'package:nubank_refactor/components/dialog_header.dart';
import 'package:nubank_refactor/components/menu.dart';
import 'package:nubank_refactor/utils/colors.dart';

Widget dialogQrCopyPaste(BuildContext context, {double height = 0.95}) {
  final _modalHeight = MediaQuery.of(context).size.height * height;
  final _viewInsets = MediaQuery.of(context).viewInsets;

  return Container(
    width: double.infinity,
    height: _modalHeight,
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              dialogHeader(context),
              SizedBox(height: 12),
              Text(
                "Insira o código do QR code a pagar",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 12),
              TextFormField(
                autofocus: true,
                onEditingComplete: () {},
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Cole o código aqui",
                  hintStyle: TextStyle(color: nuMedium),
                  border: UnderlineInputBorder(),
                ),
              ),
            ],
          ),
          AnimatedContainer(
            padding: _viewInsets,
            duration: Duration(milliseconds: 50),
            curve: Curves.easeOut,
            child: TextButton(
              onPressed: null,
              child: nuMenuIcon(icon: Icons.arrow_forward, text: ""),
            ),
          )
        ],
      ),
    ),
  );
}
