import 'package:cupid_arrow_dating_app/costans/colorcos.dart';
import 'package:cupid_arrow_dating_app/screen/page7.dart';
import 'package:cupid_arrow_dating_app/widget/custtomappbar.dart';
import 'package:cupid_arrow_dating_app/widget/custtombutton.dart';
import 'package:cupid_arrow_dating_app/widget/custtomsizebox.dart';
import 'package:cupid_arrow_dating_app/widget/custtomtext.dart';
import 'package:cupid_arrow_dating_app/widget/dashed.dart';

import 'package:cupid_arrow_dating_app/widget/textfieldd.dart';
import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {
  const Page6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgc,
      appBar: CusttomAppBar(15),
      body: Stack(children: [
        Positioned(
          child: ListView(
            children: [
              CusttomSizeBox(),
              CusttomText("Email Address", 25),
              const SizedBox(height: 15),
              CusttomText("We need your email to stay in touch", 15),
              CusttomSizeBox(),
              CusttomTextF("Enter Your Email"),
              CusttomSizeBox(),
              custtomButon("Continue", () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Page7(),
                ));
              })
            ],
          ),
        ),
        dashed(),
      ]),
    );
  }
}
