import 'package:flutter/material.dart';

import 'Screen_home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    gotoHome(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      body: Center(
          child: Text(
        'S O U N D',
        style: TextStyle(
          fontFamily: 'font',
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.black,
        ),
      )),
    );
  }

  Future gotoHome(context) async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => const HomePage()));
  }
}
