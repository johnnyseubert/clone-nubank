import 'package:flutter/material.dart';
import 'package:nubank_refactor/utils/colors.dart';

Row dialogHeader(BuildContext context, {IconData? icon, Color? color}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Icon(
          Icons.close,
          color: nuMedium,
        ),
      ),
      if (icon != null)
        Icon(
          icon,
          color: color ?? nuMedium,
        )
    ],
  );
}
