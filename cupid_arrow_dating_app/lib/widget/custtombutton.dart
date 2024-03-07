import 'package:flutter/material.dart';

Widget custtomButon(String title, void Function()? onPressed) {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      height: 50,
      width: 400,
      decoration: BoxDecoration(
          color: Colors.redAccent[400],
          borderRadius: BorderRadius.circular(50)),
      child: MaterialButton(
          onPressed: onPressed,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          )));
}
