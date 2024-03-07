import 'package:cupid_arrow_dating_app/costans/colorcos.dart';
import 'package:cupid_arrow_dating_app/screen/pagefive.dart';
import 'package:cupid_arrow_dating_app/widget/custtomappbar.dart';
import 'package:cupid_arrow_dating_app/widget/custtombutton.dart';
import 'package:cupid_arrow_dating_app/widget/custtomsizebox.dart';
import 'package:cupid_arrow_dating_app/widget/custtomtext.dart';
import 'package:cupid_arrow_dating_app/widget/custtomtextformFeild.dart';

import 'package:flutter/material.dart';

import '../widget/dashed.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: bgc,

      appBar: CusttomAppBar(5),
      body: Stack(children: [
        ListView(
          children: [
            CusttomSizeBox(),
            CusttomText("Verification Code", 25),
            CusttomSizeBox(),
            CusttomText("Please enter code we just send to ", 15),
            const SizedBox(
              height: 10,
            ),
            CusttomText("+91 992993 228192", 17),
            CusttomSizeBox(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  custtomTextFeildVer("5"),
                  custtomTextFeildVer("5"),
                  custtomTextFeildVer("-"),
                  custtomTextFeildVer("-"),
                ],
              ),
            ),
            CusttomSizeBox(),
            const Text(
              "Didn't receive OTP?",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              child: Text(
                "Resend Code",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: colorCon,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    decorationThickness: 2,
                    decoration: TextDecoration.underline),
              ),
            ),
            CusttomSizeBox(),
            custtomButon("Verfiy", () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const PageFive(),
              ));
            })
          ],
        ),
        dashed(),
      ]),
    );
  }
}
