import 'package:cupid_arrow_dating_app/costans/colorcos.dart';
import 'package:cupid_arrow_dating_app/screen/page10.dart';
import 'package:cupid_arrow_dating_app/widget/custtomappbar.dart';
import 'package:cupid_arrow_dating_app/widget/custtombutton.dart';
import 'package:cupid_arrow_dating_app/widget/custtomsizebox.dart';
import 'package:cupid_arrow_dating_app/widget/custtomtext.dart';
import 'package:flutter/material.dart';

import '../widget/dashed.dart';

class Page9 extends StatefulWidget {
  const Page9({super.key});

  @override
  State<Page9> createState() => _Page9State();
}

class _Page9State extends State<Page9> {
  String? group = "Something casual";
  Color selcCo2 = colorCon;
  Color selcCo3 = Colors.white;
  Color selcCo4 = Colors.white;
  Color selcCol = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgc,
        appBar: CusttomAppBar(30),
        body: Stack(children: [
          dashed(),
          ListView(children: [
            CusttomText("I Am Looking For...", 25),
            CusttomSizeBox(),
            CusttomText(
                "Provide us with further insights into your prefences", 16),
            CusttomSizeBox(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: selcCol, width: 2),
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "A relationship",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Radio(
                    activeColor: colorCon,
                    value: "A relationship ",
                    groupValue: group,
                    onChanged: (value) {
                      setState(() {
                        group = value!;
                        selcCol = colorCon;
                        selcCo2 = Colors.white;
                        selcCo3 = Colors.white;
                        selcCo4 = Colors.white;
                      });
                    },
                  ),
                ],
              ),
            ),
            CusttomSizeBox(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: selcCo2, width: 2),
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Something casual",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Radio(
                    activeColor: colorCon,
                    value: "Something casual",
                    groupValue: group,
                    onChanged: (value) {
                      setState(() {
                        group = value!;
                        selcCo2 = colorCon;
                        selcCol = Colors.white;

                        selcCo3 = Colors.white;
                        selcCo4 = Colors.white;
                      });
                    },
                  ),
                ],
              ),
            ),
            CusttomSizeBox(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: selcCo3, width: 2),
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "I'm not sure yet",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Radio(
                    activeColor: colorCon,
                    value: "I'm not sure yet",
                    groupValue: group,
                    onChanged: (value) {
                      setState(() {
                        group = value!;
                        selcCo3 = colorCon;
                        selcCol = Colors.white;
                        selcCo2 = Colors.white;

                        selcCo4 = Colors.white;
                      });
                    },
                  ),
                ],
              ),
            ),
            CusttomSizeBox(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: selcCo4, width: 2),
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Prefer not to say",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Radio(
                    activeColor: colorCon,
                    value: "Prefer not to say",
                    groupValue: group,
                    onChanged: (value) {
                      setState(() {
                        group = value!;
                        selcCo4 = colorCon;
                        selcCol = Colors.white;
                        selcCo2 = Colors.white;
                        selcCo3 = Colors.white;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            custtomButon("Continue", () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Page10(),
              ));
            })
          ]),
        ]));
  }
}
