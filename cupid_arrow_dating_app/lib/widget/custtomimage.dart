import 'package:flutter/material.dart';

Widget custtomIMage(double w, double h, String path) {
  return Container(
    height: h,
    width: w,
    decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          style: BorderStyle.solid,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(image: AssetImage(path), fit: BoxFit.cover)),
  );
}
