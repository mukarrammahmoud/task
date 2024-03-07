import 'package:cupid_arrow_dating_app/costans/colorcos.dart';
import 'package:cupid_arrow_dating_app/screen/page13.dart';

import 'package:cupid_arrow_dating_app/widget/custtombutton.dart';
import 'package:cupid_arrow_dating_app/widget/custtomsizebox.dart';
import 'package:cupid_arrow_dating_app/widget/custtomtext.dart';
import 'package:flutter/material.dart';

import '../widget/dashed.dart';

class Page12 extends StatelessWidget {
  const Page12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgc,
        body: Stack(children: [
          dashed(),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                child: Stack(children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 120,
                      ),
                      Icon(
                        Icons.location_pin,
                        size: 70,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      Icon(
                        Icons.location_pin,
                        size: 70,
                        color: Colors.grey[400],
                      ),
                    ],
                  ),
                  Positioned(
                    left: 160,
                    bottom: 10,
                    child: Icon(
                      Icons.location_pin,
                      size: 120,
                      color: colorCon,
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 160,
                    child: Icon(
                      Icons.location_pin,
                      size: 40,
                      color: Colors.grey[400],
                    ),
                  ),
                  Positioned(
                    top: 60,
                    right: 130,
                    child: Icon(
                      Icons.location_pin,
                      size: 40,
                      color: Colors.grey[400],
                    ),
                  ),
                ]),
              ),
              CusttomSizeBox(),
              CusttomText("Enable Your Location", 25),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: CusttomText(
                    "Choose your location to start find people around you", 15),
              ),
              CusttomSizeBox(),
              custtomButon("Allow Location Access", () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const Page13(),
                    ),
                    (route) => false);
              }),
              CusttomSizeBox(),
              InkWell(
                child: Text(
                  "Enter Location Manually",
                  style:
                      TextStyle(color: colorCon, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )),
        ]));
  }
}
