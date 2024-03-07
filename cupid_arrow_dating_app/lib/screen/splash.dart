import 'package:cupid_arrow_dating_app/screen/page1.dart';
import 'package:cupid_arrow_dating_app/widget/cupid.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  nav() {
    Future.delayed(
        const Duration(
          seconds: 2,
        ), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return const LoginOne();
        },
      ));
    });
  }

  @override
  void initState() {
    super.initState();
    nav();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 199, 214),
      body: Container(
        height: 1000,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromARGB(255, 240, 113, 155).withOpacity(0.0),
              Color.fromARGB(255, 245, 98, 147).withOpacity(0.0),
             Color.fromARGB(255, 232, 160, 184),
            ])),
        child: cupid(100, 100, 25),
      ),
    );
  }
}
