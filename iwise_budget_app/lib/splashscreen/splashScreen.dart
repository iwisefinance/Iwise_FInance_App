import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:iwisebudgetapp/onboardingScreen/screens/landingPage.dart';
import 'package:iwisebudgetapp/components/colors.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 6),
        () => Navigator.pushReplacementNamed(context, '/onboarding'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'raleway'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: mainColor,
        body: Stack(
          overflow: Overflow.clip,
          children: [
            Center(
              child: Transform.rotate(
                angle: -38.85,
                child: Container(
                  width: 500,
                  height: 620,
                  decoration: BoxDecoration(
                    color: Color(0xff141124).withOpacity(0.4),
                  ),
                ),
              ),
            ),
            Center(
              child: Image.asset('assets/iWiseLogo6.png'),
            ),
          ],
        ),
      ),
    );
  }
}
