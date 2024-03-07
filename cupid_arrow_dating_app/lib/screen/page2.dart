import 'package:cupid_arrow_dating_app/costans/colorcos.dart';
import 'package:cupid_arrow_dating_app/screen/pagethree.dart';
import 'package:cupid_arrow_dating_app/widget/cupid.dart';
import 'package:cupid_arrow_dating_app/widget/custtombutton.dart';
import 'package:cupid_arrow_dating_app/widget/custtombutton_with_icon.dart';
import 'package:cupid_arrow_dating_app/widget/phonetextfeild.dart';
import 'package:flutter/material.dart';

import '../widget/custtomsizebox.dart';

class LoginTow extends StatelessWidget {
  const LoginTow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
             backgroundColor: bgc,

        body: ListView(
          children: [
            CusttomSizeBox(),
            cupid(50, 80, 20),
            CusttomSizeBox(),

            CusttomSizeBox(),
            // custtomTextField(),
            phoneTextFeild(),

            const SizedBox(
              height: 20,
            ),
            VerticalDivider(
                color: Colors.black, width: 2, indent: 8, thickness: 3),
            custtomButon("Continue", () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const PageThree(),
              ));
            }),
            CusttomSizeBox(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    indent: 90,
                    color: Colors.blueGrey,
                    height: 2,
                  ),
                ),
                Text("  OR  "),
                Expanded(
                  child: Divider(
                    endIndent: 90,
                    color: Colors.blueGrey,
                    height: 2,
                  ),
                ),
              ],
            ),
            CusttomSizeBox(),
            custtomButtonWithIcon(
                const Icon(
                  Icons.facebook,
                  color: Colors.blueAccent,
                  size: 30,
                ),
                "Login with Facebook"),
            CusttomSizeBox(),
            custtomButtonWithIcon(
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "images/google.jpg",
                    fit: BoxFit.cover,
                    height: 10,
                    width: 10,
                  ),
                ),
                "Login with Facebook"),
          ],
        ));
  }
}
