import 'package:cupid_arrow_dating_app/costans/colorcos.dart';
import 'package:cupid_arrow_dating_app/screen/page12.dart';
import 'package:cupid_arrow_dating_app/widget/custtomappbar.dart';
import 'package:cupid_arrow_dating_app/widget/custtombutton.dart';
import 'package:cupid_arrow_dating_app/widget/custtomsizebox.dart';
import 'package:cupid_arrow_dating_app/widget/custtomtext.dart';
import 'package:dotted_border/dotted_border.dart';

import 'package:flutter/material.dart';

class Page11 extends StatelessWidget {
  const Page11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: bgc,

      appBar: CusttomAppBar(40),
      body: ListView(children: [
        CusttomText("Upload Your Photo", 25),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: CusttomText(
              "We'd love to see you.Upload a photo for your dating journy", 16),
        ),
        CusttomSizeBox(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Container(
                height: 240,
                width: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image:
                      const DecorationImage(image: AssetImage("images/p.png")),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  custtomContainerAdd(),
                  const SizedBox(
                    height: 25,
                  ),
                  custtomContainerAdd(),
                ],
              ),
            ],
          ),
        ),
        CusttomSizeBox(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              custtomContainerAdd(),
              SizedBox(
                width: 18,
              ),
              custtomContainerAdd(),
              SizedBox(
                width: 18,
              ),
              custtomContainerAdd(),
            ],
          ),
        ),
        CusttomSizeBox(),
        custtomButon("Continue", () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => Page12(),
          ));
        })
      ]),
    );
  }

  Widget custtomContainerAdd() {
    return DottedBorder(
        strokeWidth: 2,
        dashPattern: [3, 4],
        borderType: BorderType.RRect,
        radius: Radius.circular(25),
        color: colorCon,
        stackFit: StackFit.passthrough,
        child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Container(
                margin: const EdgeInsets.all(30),
                alignment: Alignment.center,
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), color: colorCon),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ))));
  }
}
