import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iwisebudgetapp/onboardingScreen/constants/constants.dart';
import 'package:iwisebudgetapp/onboardingScreen/models/slider.dart';
import 'package:iwisebudgetapp/onboardingScreen/widgets/dots.dart';
import 'package:iwisebudgetapp/onboardingScreen/widgets/sliderItem/slider.dart';
import 'dart:convert';

class SliderLayoutView extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _SliderLayoutViewState();
}

class _SliderLayoutViewState extends State<SliderLayoutView> {

  void getData() {

  }

  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    getData();
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) => topSliderLayout();

  Widget topSliderLayout() => Container(
        child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: sliderArrayList.length,
                  itemBuilder: (ctx, i) => SlideItem(i),
                ),
                Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 8.0, bottom: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            _pageController.nextPage(
                                duration: Duration(milliseconds: 800),
                                curve: Curves.ease);
                          },
                          child: Text(
                            Constants.NEXT,
                            style: TextStyle(
                                color: Color(0xff555A5B), fontSize: 15.0),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/login');
                          },
                          child: Text(
                            Constants.SKIP,
                            style: TextStyle(
                                color: Color(0xff555A5B), fontSize: 15.0),
                          ),
                        ),
                      ),
                    ),
                    // Container(
                      // alignment: AlignmentDirectional.bottomCenter,
                      // margin: EdgeInsets.only(bottom: 20.0),
                      // child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // children: <Widget>[
                          // for (int i = 0; i < sliderArrayList.length; i++){
                            // if (i == _currentPage){
                              // SlideDots(true)
                            // }
                            // else
                              // SlideDots(false)
                          // }
                        // ],
                      // ),
                    // ),
                  ],
                )
              ],
            )),
      );
}
