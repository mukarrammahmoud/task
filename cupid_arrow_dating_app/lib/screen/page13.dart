import 'package:cupid_arrow_dating_app/costans/colorcos.dart';
import 'package:cupid_arrow_dating_app/widget/cupid.dart';

import 'package:cupid_arrow_dating_app/widget/custtomsizebox.dart';
import 'package:cupid_arrow_dating_app/widget/custtomstory.dart';

import 'package:flutter/material.dart';

class Page13 extends StatefulWidget {
  const Page13({super.key});

  @override
  State<Page13> createState() => _Page13State();
}

class _Page13State extends State<Page13> {
  int selecteIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selecteIndex = value;
            });
          },
          selectedItemColor: colorCon,
          unselectedItemColor: Colors.grey,
          currentIndex: selecteIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.card_membership), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ]),
            backgroundColor: bgc,
      appBar: AppBar(
              backgroundColor: bgc,

        elevation: 0,
        title: cupid(50, 100, 16),
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.only(left: 25, bottom: 20, top: 5),
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color.fromARGB(255, 243, 154, 184)),
          child: Icon(
            Icons.grid_view_rounded,
            color: colorCon,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, bottom: 20, top: 5),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 30,
                    offset: Offset.infinite,
                    color: colorCon,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 243, 154, 184)),
            child: Icon(
              Icons.filter_alt,
              color: colorCon,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          CusttomSizeBox(),
          Container(
            height: 120,
            margin: const EdgeInsets.only(left: 10),
            child: SingleChildScrollView(
              // physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  custtomStory("images/p.png", "Add Story", 1),
                  custtomStory("images/one.png", "Jone", 0),
                  custtomStory("images/profile.png", "Oscar", 0),
                  custtomStory("images/photo.png", "Micheal", 0),
                  custtomStory("images/photo3.png", "Jessica", 0),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 400,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          // spreadRadius: 5,
                          blurStyle: BlurStyle.inner,
                          color: colorCon.withOpacity(0.2),
                          blurRadius: 5,
                          offset: Offset(0, 7)
                          // offset: Offset.fromDirection(4, -4.8),
                          ),
                      BoxShadow(
                          // spreadRadius: 5,
                          blurStyle: BlurStyle.inner,
                          color: colorCon.withOpacity(0.1),
                          blurRadius: 5,
                          offset: Offset(0, 14)
                          // offset: Offset.fromDirection(4, -4.8),
                          ),
                      BoxShadow(
                          // spreadRadius: 5,
                          blurStyle: BlurStyle.inner,
                          color: colorCon.withOpacity(0.1),
                          blurRadius: 5,
                          offset: Offset(0, 21)
                          // offset: Offset.fromDirection(4, -4.8),
                          ),
                      BoxShadow(
                          // spreadRadius: 5,
                          blurStyle: BlurStyle.inner,
                          color: colorCon.withOpacity(0.0),
                          blurRadius: 5,
                          offset: Offset(0, 29)
                          // offset: Offset.fromDirection(4, -4.8),
                          ),
                      // BoxShadow(
                      //   spreadRadius: 1,
                      //   blurStyle: BlurStyle.inner,
                      //   color: colorCon.withOpacity(0.4),
                      //   blurRadius: 2,
                      //   offset: Offset(0, 6),
                      // ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage("images/p.png"), fit: BoxFit.cover)),
              ),
              Positioned(
                left: 40,
                bottom: 50,
                child: Column(
                  children: [
                    const Text(
                      "Kalvin, 23",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "MALIBU . 20 KMS AWAY",
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          CusttomSizeBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myRespone(Icons.close, colorCon, Colors.white),
              myRespone(Icons.favorite, Colors.white, colorCon),
              myRespone(Icons.star_sharp, Colors.white, Colors.amberAccent),
            ],
          ),
          CusttomSizeBox()
        ],
      ),
    );
  }

  Container myRespone(IconData myIcon, Color iconColor, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: color == colorCon ? 60 : 50,
      width: color == colorCon ? 60 : 50,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(100), color: color),
      child: Icon(
        myIcon,
        color: iconColor,
        size: 25,
      ),
    );
  }
}
