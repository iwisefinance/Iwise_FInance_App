import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateTabJanuary extends StatefulWidget {
  @override
  _CreateTabJanuaryState createState() => _CreateTabJanuaryState();
}

class _CreateTabJanuaryState extends State<CreateTabJanuary> {
  List<String> _locations = [
    'Monthly',
    'Weekly',
    'Daily                                                                         ',
  ]; // Option 2
  String _selectedLocation;
  TextEditingController textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Budget Name'),
            TextFormField(
              autovalidate: true,
              keyboardType: TextInputType.name,
              controller: textFieldController,
            ),
            SizedBox(height: 30.0),
            Text('Budget Amount'),
            TextFormField(
              autovalidate: true,
              keyboardType: TextInputType.number,
              //controller: textFieldController,
            ),
            SizedBox(height: 30.0),
            Text('Budget Duration'),
            DropdownButton(
              hint: Text(
                  'Please choose a duration'), // Not necessary for Option 1
              value: _selectedLocation,
              onChanged: (newValue) {
                setState(() {
                  _selectedLocation = newValue;
                });
              },
              items: _locations.map((location) {
                return DropdownMenuItem(
                  child: new Text(location),
                  value: location,
                );
              }).toList(),
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
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
            ),
          ],
        ),
      ),
    );
  }
}
