import 'package:cupid_arrow_dating_app/costans/colorcos.dart';
import 'package:cupid_arrow_dating_app/screen/pagefour.dart';
import 'package:cupid_arrow_dating_app/widget/custtomappbar.dart';
import 'package:cupid_arrow_dating_app/widget/custtombutton.dart';
import 'package:cupid_arrow_dating_app/widget/custtomsizebox.dart';
import 'package:cupid_arrow_dating_app/widget/custtomtext.dart';
import 'package:cupid_arrow_dating_app/widget/phonetextfeild.dart';
import 'package:cupid_arrow_dating_app/widget/dashed.dart';

import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgc,
        appBar: CusttomAppBar(1),
        body: Stack(children: [
          Positioned(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  CusttomSizeBox(),
                  CusttomText("My Number is", 25),
                  CusttomSizeBox(),
                  CusttomText(
                      "We'll need your phone number to send an OTP for verification.",
                      16),

                  CusttomSizeBox(),
                  // custtomTextField(),
                  phoneTextFeild(),
                  CusttomSizeBox(),
                  custtomButon("Continue", () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PageFour(),
                    ));
                  })
                ],
              ),
            ),
          ),
          dashed(),
        ]));
  }
}
