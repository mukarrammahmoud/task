import 'package:cupid_arrow_dating_app/costans/colorcos.dart';
import 'package:cupid_arrow_dating_app/screen/page9.dart';
import 'package:cupid_arrow_dating_app/widget/custtomappbar.dart';
import 'package:cupid_arrow_dating_app/widget/custtombutton.dart';
import 'package:cupid_arrow_dating_app/widget/custtomsizebox.dart';
import 'package:cupid_arrow_dating_app/widget/custtomtext.dart';
import 'package:flutter/material.dart';

import '../widget/dashed.dart';

class Page8 extends StatefulWidget {
  const Page8({super.key});

  @override
  State<Page8> createState() => _Page8State();
}

class _Page8State extends State<Page8> {
  Color col = colorCon;
  Color col2 = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             backgroundColor: bgc,

        appBar: CusttomAppBar(25),
        body: Stack(children: [
          dashed(),
          ListView(children: [
            CusttomText("What's Your Gender?", 25),
            CusttomSizeBox(),
            CusttomText("Tell us about your gender", 16),
            CusttomSizeBox(),
            InkWell(
              onTap: () {
                setState(() {
                  if (col == colorCon) {
                    col = Colors.grey;
                    col2 = colorCon;
                  } else {
                    col = colorCon;
                    col2 = Colors.grey;
                  }
                });
              },
              child: Center(
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: col, borderRadius: BorderRadius.circular(100)),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.male,
                        size: 45,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Male",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
            CusttomSizeBox(),
            InkWell(
              onTap: () {
                setState(() {
                  if (col2 == colorCon) {
                    col = colorCon;
                    col2 = Colors.grey;
                  } else {
                    col = Colors.grey;
                    col2 = colorCon;
                  }
                });
              },
              child: Center(
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: col2, borderRadius: BorderRadius.circular(100)),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.female,
                        size: 45,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Female",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
            CusttomSizeBox(),
            CusttomSizeBox(),
            CusttomSizeBox(),
            custtomButon("Continue", () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Page9(),
              ));
            })
          ]),
        ]));
  }
}
