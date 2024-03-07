import 'package:flutter/material.dart';

Widget custtomButtonWithIcon( Widget widget,String title) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 50),
    padding: EdgeInsets.only(left: 20),
    height: 42,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(90)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: widget),
        MaterialButton(
            onPressed: () {},
            child:  Text(
              "  $title",
              style:const TextStyle(color: Colors.black),
            )),
      ],
    ),
  );
}
