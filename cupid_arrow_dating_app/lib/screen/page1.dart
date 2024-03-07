import 'package:cupid_arrow_dating_app/costans/colorcos.dart';
import 'package:cupid_arrow_dating_app/screen/page2.dart';
import 'package:cupid_arrow_dating_app/widget/cupid.dart';
import 'package:cupid_arrow_dating_app/widget/custtomimage.dart';
import 'package:cupid_arrow_dating_app/widget/custtomtext.dart';
import 'package:dashed_line/dashed_line.dart';
import 'package:flutter/material.dart';

import '../widget/custtomsizebox.dart';

final path = Path()..cubicTo(-40, 53, 14, 86, 61, 102);

class LoginOne extends StatelessWidget {
  const LoginOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgc,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: SingleChildScrollView(
          child: Stack(children: [
            DashedLine(
              path: Path()..cubicTo(-400, -400, -200, 300, -100, -10),
              dashLength: 10,
              dashSpace: 5,
              color: colorCon,
            ),
            Column(
              children: [
                CusttomSizeBox(),
                cupid(50, 80, 20),
                custtomIMage(120, 120, "images/p.png"),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      width: 190,
                    ),
                    custtomIMage(100, 100, "images/profile.png"),
                  ],
                ),
                custtomIMage(70, 70, "images/one.png"),
                CusttomSizeBox(),
                CusttomSizeBox(),
                CusttomText(
                  "Discover Love Where Your Story Begins.",
                  25,
                ),
                CusttomSizeBox(),
                CusttomText(
                  "Join us to discover your idea partner and ignite the sparks of romance in your jorurny.",
                  18,
                ),
                CusttomSizeBox(),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  width: 270,
                  height: 42,
                  decoration: BoxDecoration(
                      color: colorCon, borderRadius: BorderRadius.circular(90)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.phone,
                            color: colorCon,
                          )),
                      MaterialButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) {
                                return const LoginTow();
                              },
                            ));
                          },
                          child: const Text(
                            "Login with Phone",
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                ),
                CusttomSizeBox(),
                Text.rich(TextSpan(children: [
                  TextSpan(text: "Don't have an account? "),
                  TextSpan(
                      text: "Sign Up",
                      style: TextStyle(
                          color: colorCon,
                          fontSize: 18,
                          fontWeight: FontWeight.bold))
                ])),
                CusttomSizeBox(),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
