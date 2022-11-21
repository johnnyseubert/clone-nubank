import 'package:flutter/material.dart';
import 'package:nubank_refactor/globalComponents/texts.dart';
import 'package:nubank_refactor/utils/colors.dart';

Widget nuRowChevron(String text, {required void Function() onPressed}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      nuTitle(text),
      IconButton(
        color: nuPrimary,
        icon: Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.black,
        ),
        onPressed: onPressed,
      ),
    ],
  );
}
