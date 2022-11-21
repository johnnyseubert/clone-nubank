import 'package:flutter/material.dart';
import 'package:nubank_refactor/utils/colors.dart';

Widget nuMenuIcon({
  required IconData icon,
  required String text,
  void Function()? ontap,
  bool isFirst = false,
}) {
  return InkWell(
    onTap: ontap,
    child: Container(
      padding: isFirst
          ? EdgeInsets.only(left: 20, right: 7)
          : EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: nuLight,
              borderRadius: BorderRadius.circular(48),
            ),
            child: Icon(icon),
          ),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}
