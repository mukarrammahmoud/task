import 'package:dashed_line/dashed_line.dart';
import 'package:flutter/material.dart';

import '../costans/colorcos.dart';

Widget dashed() {
  return Positioned(
    bottom: -65,
    child: Container(
      height: 300,
      child: DashedLine(
        path: Path()..cubicTo(-400, -400, -200, 300, -1000, -10),
        dashLength: 10,
        dashSpace: 15,
        color: colorCon.withOpacity(0.3),
      ),
    ),
  );
}
