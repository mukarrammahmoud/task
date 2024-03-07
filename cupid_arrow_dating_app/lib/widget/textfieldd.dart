import 'package:flutter/material.dart';

Widget CusttomTextF(String hint) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 40,
    ),
    child: TextFormField(
      cursorColor: Colors.black,

      // textAlign: hint == "Enter Your Name" ? TextAlign.start : TextAlign.center,
      keyboardType: hint == "Enter Your Name"
          ? TextInputType.name
          : TextInputType.emailAddress,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintStyle: const TextStyle(fontWeight: FontWeight.bold),
        hintText: hint,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: const BorderSide(
              width: 1.5,
              color: Colors.redAccent,
            )),
      ),
    ),
  );
}
