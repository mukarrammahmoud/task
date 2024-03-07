import 'package:flutter/material.dart';

Widget cupid(double w, double h, double size) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        "images/s.png",
        width: w,
        height: h,
      ),
      Text(
        "CupidArrow",
        style: TextStyle(
            fontSize: size, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    ],
  );
}
