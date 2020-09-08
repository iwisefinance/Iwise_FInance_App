import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateTabNovember extends StatefulWidget {
  @override
  _CreateTabNovemberState createState() => _CreateTabNovemberState();
}

class _CreateTabNovemberState extends State<CreateTabNovember> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset('assets/mirage-empty.png'),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 0.0,
                vertical: 20.0,
              ),
              child: Text(
                'Nothing Here',
                style: TextStyle(
                    color: Color(0xff555A5B),
                    fontFamily: 'Roboto/Roboto-Regular.ttf',
                    fontSize: 14.0),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/addBudget');
                },
                padding: EdgeInsets.all(5.0),
                color: Colors.white,
                tooltip: 'Create A Budget',
                icon: Icon(
                  Icons.add,
                  color: Colors.blue,
                  size: 18.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 0.0,
                vertical: 10.0,
              ),
              child: FlatButton(
                child: Text(
                  'Create A Budget',
                  style: TextStyle(
                    fontFamily: 'Roboto/Roboto-Medium.ttf',
                    fontSize: 18.0,
                    color: Color(0xff0076BC),
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.underline,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/addBudget');
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
