import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTabVectors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(

              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 0.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/agric-vector.png'),
                  radius: 25.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 30.0, vertical: 0.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/airline-vector.png'),
                radius: 25.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0.0, 60.0, 0.0),
              child: CircleAvatar(
                backgroundImage:
                AssetImage('assets/automobile-vector.png'),
                radius: 25.0,
              ),
            ),
          ],
        )
      ],
    );
  }
}
