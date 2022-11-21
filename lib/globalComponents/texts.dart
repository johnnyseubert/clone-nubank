import 'package:flutter/material.dart';
import 'package:nubank_refactor/utils/colors.dart';

Widget nuTitle(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );
}

Widget nuLightText(String text) {
  return Text(text, style: TextStyle(fontSize: 13, color: nuMedium));
}
