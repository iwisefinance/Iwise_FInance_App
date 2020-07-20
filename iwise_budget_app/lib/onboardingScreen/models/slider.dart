import 'package:flutter/cupertino.dart';
import 'package:iwisebudgetapp/onboardingScreen/constants/constants.dart';

class Slider {
  final String sliderImageUrl;
  final String sliderHeading;
  final String sliderSubHeading;

  Slider(
      {@required this.sliderImageUrl,
        @required this.sliderHeading,
        @required this.sliderSubHeading});
}

final sliderArrayList = [
  Slider(
      sliderImageUrl: 'assets/flamenco-payment-processed 1.png',
      sliderHeading: Constants.SLIDER_HEADING_1,
      sliderSubHeading: Constants.SLIDER_DESC1),
  Slider(
      sliderImageUrl: 'assets/payment-processed-6 1.png',
      sliderHeading: Constants.SLIDER_HEADING_2,
      sliderSubHeading: Constants.SLIDER_DESC2),
  Slider(
      sliderImageUrl: 'assets/bermuda-payment-processed 1.png',
      sliderHeading: Constants.SLIDER_HEADING_3,
      sliderSubHeading: Constants.SLIDER_DESC3),
];
