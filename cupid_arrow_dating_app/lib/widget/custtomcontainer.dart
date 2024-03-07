import 'package:cupid_arrow_dating_app/costans/colorcos.dart';
import 'package:flutter/material.dart';

Widget CusttomContainer(int sel, IconData icon, String title) {
  return Container(
    height: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: sel == 1 ? colorCon : Colors.white,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: sel == 0 ? colorCon : Colors.white,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: TextStyle(color: sel == 0 ? Colors.black : Colors.white),
        ),
      ],
    ),
  );
}
