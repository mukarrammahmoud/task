import 'package:flutter/material.dart';

Widget CusttomText(String title, double fontSizee) {
  return Text(
    textAlign: TextAlign.center,
    title,
    style: TextStyle(
        fontSize: fontSizee,
        fontWeight: (fontSizee == 25 || fontSizee == 17)
            ? FontWeight.bold
            : FontWeight.normal),
  );
}
