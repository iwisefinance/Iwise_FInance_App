import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iwisebudgetapp/onboardingScreen/view/layoutView.dart';

class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: onBordingBody(),
    );
  }

  Widget onBordingBody() => Container(
    child: SliderLayoutView(),
  );
}
