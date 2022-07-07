import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login_screen.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      setState(() {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            margin: EdgeInsets.only(left: 70),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    print('See Doctors');
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  },
                  child: Image.asset(
                    'images/logo.png',
                    scale: 2,
                  ),
                )
              ],
            )));
  }
}
