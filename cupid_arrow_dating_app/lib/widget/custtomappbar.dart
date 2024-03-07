import 'package:cupid_arrow_dating_app/costans/colorcos.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget CusttomAppBar(double val) {
  return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: bgc,
      title: SliderTheme(
        data: SliderThemeData(
          thumbShape: SliderComponentShape.noThumb,
          activeTrackColor: Colors.red,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Slider(
            inactiveColor: Colors.pinkAccent.withOpacity(0.3),
            activeColor: Colors.redAccent[400],
            onChanged: (value) {},
            value: val,
            max: 40,
            min: 1,
          ),
        ),
      ));
}
