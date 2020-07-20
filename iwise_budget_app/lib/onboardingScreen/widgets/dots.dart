import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {
  final bool isActive;
  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 3.3),
      height: isActive ? 16 : 16,
      width: isActive ? 16 : 16,
      decoration: BoxDecoration(
        color: isActive ? Color(0xff0076BC) : Color(0xffE5E5E5),
        border: isActive ?  Border.all(color: Color(0xff0076BC),width: 2.0,) : Border.all(color: Colors.transparent,width: 1,),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
