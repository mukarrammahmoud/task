import 'package:cupid_arrow_dating_app/costans/colorcos.dart';
import 'package:cupid_arrow_dating_app/screen/page8.dart';
import 'package:cupid_arrow_dating_app/widget/custtomappbar.dart';
import 'package:cupid_arrow_dating_app/widget/custtomsizebox.dart';
import 'package:cupid_arrow_dating_app/widget/custtomtext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../widget/custtombutton.dart';
import '../widget/dashed.dart';

class Page7 extends StatefulWidget {
  const Page7({super.key});

  @override
  State<Page7> createState() => _Page7State();
}

class _Page7State extends State<Page7> {
  List<int> age = [
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30
  ];

  int selecteditem = 32;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: bgc,

        appBar: CusttomAppBar(20),
        body: Stack(children: [
          dashed(),
          ListView(
            children: [
              CusttomText("How Old are You?", 25),
              const SizedBox(
                height: 15,
              ),
              CusttomText("Please provide your age in years", 15),
              CusttomSizeBox(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 150.0),
                child: NumberPicker(
                    itemCount: 7,
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                    selectedTextStyle: TextStyle(
                        color: colorCon,
                        fontWeight: FontWeight.bold,
                        fontSize: 45),
                    decoration: BoxDecoration(
                        border: Border.symmetric(
                            horizontal: BorderSide(
                      color: colorCon,
                      width: 3,
                    ))),
                    value: selecteditem,
                    minValue: 0,
                    maxValue: 100,
                    onChanged: (value) {
                      setState(() {
                        selecteditem = value;
                      });
                    }),
              ),
              CusttomSizeBox(),
              custtomButon("Continue", () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Page8(),
                ));
              }),
            ],
          ),
        ]));
  }
}
