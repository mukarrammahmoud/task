import 'package:cupid_arrow_dating_app/costans/colorcos.dart';
import 'package:flutter/material.dart';

Widget custtomTextFeildVer(String hint) {
  return Container(
    //
    padding: const EdgeInsets.only(
      top: 15,
    ),
    height: 45,
    width: 45,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100), color: Colors.white),
    child: TextFormField(
      cursorColor: colorCon,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintStyle: const TextStyle(fontWeight: FontWeight.bold),
        hintText: hint,
        enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: hint == "Enter Your Name"
                ? const BorderSide(
                    width: 1.5,
                    color: Colors.redAccent,
                  )
                : BorderSide.none),
      ),
    ),
  );
}
