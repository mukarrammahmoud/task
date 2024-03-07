import 'package:flutter/material.dart';

import '../costans/colorcos.dart';

Widget custtomStory(String path, String name, int selected) {
  return Column(
    children: [
      Container(
        height: 85,
        width: 85,
        margin:const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  path,
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(16),
            border: selected == 1
                ? Border.all(color: colorCon, width: 2)
                : Border.all(width: 0, color: Colors.white)),
      ),
      const SizedBox(
        height: 8,
      ),
      Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold),
      )
    ],
  );
}
