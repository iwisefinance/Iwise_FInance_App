import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTabFebruary extends StatefulWidget {

  @override
  _AddTabFebruaryState createState() => _AddTabFebruaryState();
}

class _AddTabFebruaryState extends State<AddTabFebruary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'CHOOSE CATEGORY',
            style: TextStyle(color: Colors.grey[800]),
          ),
          SizedBox(height: 10.0),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 0.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/Agriculture.png'),
                      radius: 25.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 0.0),
                    child: CircleAvatar(
                      backgroundImage:
                      AssetImage('assets/.png'),
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
          ),
          SizedBox(height: 15.0),
          Text(
            'Lets Setup Your Budget',
            style: TextStyle(color: Colors.grey[800]),
          ),
          SizedBox(
            height: 40.0,
          ),
          Text(
            'Budget Duration',
            style: TextStyle(color: Colors.grey[800]),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            'Monthly',
            style: TextStyle(color: Colors.grey[800]),
          ),



        ],
      ),
    );
  }
}
