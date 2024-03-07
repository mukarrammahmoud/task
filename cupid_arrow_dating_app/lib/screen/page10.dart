import 'package:cupid_arrow_dating_app/costans/colorcos.dart';
import 'package:cupid_arrow_dating_app/screen/page11.dart';
import 'package:cupid_arrow_dating_app/widget/custtomappbar.dart';
import 'package:cupid_arrow_dating_app/widget/custtombutton.dart';
import 'package:cupid_arrow_dating_app/widget/custtomcontainer.dart';
import 'package:cupid_arrow_dating_app/widget/custtomsizebox.dart';
import 'package:cupid_arrow_dating_app/widget/custtomtext.dart';
import 'package:flutter/material.dart';

import '../widget/dashed.dart';

class Page10 extends StatelessWidget {
  const Page10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: bgc,

        appBar: CusttomAppBar(35),
        body: Stack(children: [
          dashed(),
          ListView(children: [
            CusttomText("Select Up To 3 Intrest", 25),
            const SizedBox(
              height: 15,
            ),
            CusttomText("Tell us what piques your curiosity and passions", 16),
            CusttomSizeBox(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: CusttomContainer(1, Icons.menu_book, "Reading")),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: CusttomContainer(
                            0, Icons.photo_camera, "Photography")),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: CusttomContainer(0, Icons.games, "Gaming")),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CusttomContainer(1, Icons.music_note, "Music"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CusttomContainer(
                        0, Icons.airplanemode_active, "Travel"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child:
                            CusttomContainer(1, Icons.color_lens, "Painting")),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: CusttomContainer(
                            0, Icons.policy_outlined, "Politics")),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: CusttomContainer(0, Icons.sports_bar, "Charity")),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CusttomContainer(0, Icons.local_dining, "Cooking"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CusttomContainer(0, Icons.pets, "Pets"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child:
                            CusttomContainer(1, Icons.sports_soccer, "Sports")),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child:
                            CusttomContainer(0, Icons.woo_commerce, "Fashion")),
                  ],
                ),
              ),
            ),
            CusttomSizeBox(),
            const SizedBox(
              height: 100,
            ),
            custtomButon("Continue", () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Page11(),
              ));
            })
          ]),
        ]));
  }
}
