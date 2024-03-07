import 'package:cupid_arrow_dating_app/screen/page6.dart';
import 'package:cupid_arrow_dating_app/widget/custtomappbar.dart';
import 'package:cupid_arrow_dating_app/widget/custtombutton.dart';
import 'package:cupid_arrow_dating_app/widget/custtomsizebox.dart';
import 'package:cupid_arrow_dating_app/widget/custtomtext.dart';

import 'package:cupid_arrow_dating_app/widget/dashed.dart';
import 'package:cupid_arrow_dating_app/widget/textfieldd.dart';
import 'package:flutter/material.dart';

import '../costans/colorcos.dart';

class PageFive extends StatelessWidget {
  const PageFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor: bgc,

      appBar: CusttomAppBar(10),
      body: Stack(children: [
        Positioned(
          child: ListView(
            children: [
              CusttomSizeBox(),
              CusttomText("What's Your Name", 25),
              const SizedBox(height: 15),
              CusttomText("Let's Get to know Each Other", 15),
              CusttomSizeBox(),
              CusttomTextF("Enter Your Name"),
              CusttomSizeBox(),
              custtomButon("Continue", () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Page6(),
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
