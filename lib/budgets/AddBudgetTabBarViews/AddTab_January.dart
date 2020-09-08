import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iwisebudgetapp/budgets/AddBudgetTabBarViews/AddTab_Vectors.dart';
import 'package:iwisebudgetapp/budgets/screens/saved-budgets.dart';

// ignore: must_be_immutable
class AddTabJanuary extends StatefulWidget {
  //String text;

  //AddTabJanuary({this.text});
  @override
  _AddTabJanuaryState createState() => _AddTabJanuaryState();
}

class _AddTabJanuaryState extends State<AddTabJanuary> {
  //String text;
  // void savetovariable(String text) {
  //   setState(() {
  //     textString = 'flutter';
  //   });
  // }
  TextEditingController textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        //color: Colors.grey[300],
        margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Budget Name:',
                    style: TextStyle(color: Color(0xFF555A5B), fontSize: 13.0),
                  ),
                  Text(
                    'text',
                    style: TextStyle(
                        color: Color(0xFF0076BC),
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  Container(
                    width: 160.0,
                    alignment: Alignment.topRight,
                    child: Text(
                      'Monthly',
                      style: TextStyle(
                        color: Color(0xFFC4C4C4),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 40.0),
              alignment: Alignment.center,
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0xFFC4C4C4),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Budgeted Amount:',
                    style: TextStyle(
                        fontFamily: 'Roboto/Roboto-Medium.ttf',
                        color: Color(0xFF555A5B),
                        fontSize: 13.0),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'N 50,000',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Roboto/Roboto-Medium.ttf',
                        color: Color(0xFF0076BC),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Text(
              'CHOOSE CATEGORY',
              style: TextStyle(color: Color(0xFF555A5B), fontSize: 16.0),
            ),
            SizedBox(height: 15.0),
            AddTabVectors(),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Text(
                'Lets Setup Your Budget',
                style: TextStyle(color: Color(0xFF555A5B)),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 15.0, 10.0, 0),
              child: Text(
                'Amount',
                style: TextStyle(color: Color(0xFF979797)),
              ),
            ),
            //Text Field
            TextFormField(
                autovalidate: true,
                keyboardType: TextInputType.phone,
                controller: textFieldController,
                decoration: InputDecoration(
                  prefix: Text('N '),
                )),

            SizedBox(
              height: 50.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFF0076BC),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: FlatButton(
                  child: Text(
                    'SAVE BUDGET',
                    style: TextStyle(
                      fontFamily: 'Roboto/Roboto-Medium.ttf',
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    String textToSend = textFieldController.text;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SavedBudget(text: textToSend)));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
