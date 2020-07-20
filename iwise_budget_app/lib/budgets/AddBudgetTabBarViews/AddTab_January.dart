import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iwisebudgetapp/budgets/AddBudgetTabBarViews/AddTab_Vectors.dart';

class AddTabJanuary extends StatefulWidget {
  @override
  _AddTabJanuaryState createState() => _AddTabJanuaryState();
}

class _AddTabJanuaryState extends State<AddTabJanuary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'CHOOSE CATEGORY',
            style: TextStyle(color: Colors.grey[800]),
          ),
          SizedBox(height: 10.0),

          AddTabVectors(),

          Container(
            margin: EdgeInsets.only(top: 30.0),
            child: Text(
              'Lets Setup Your Budget',
              style: TextStyle(color: Colors.grey[800]),
            ),
          ),


          Container(
            margin: EdgeInsets.only(top: 30.0),
            child: Text(
              'Budget Duration',
              style: TextStyle(color: Colors.grey[800]),
            ),
          ),


          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Monthly',
              style: TextStyle(color: Colors.grey[800]),
            ),
          ),
          Divider(
            height: 20.0,
            color: Colors.grey[800],
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 7.0),
            child: Text(
              'Budget Name',
              style: TextStyle(color: Colors.grey[800]),
            ),
          ),
          Divider(
            height: 20.0,
            color: Colors.grey[800],
          ),


          Container(
            margin: EdgeInsets.symmetric(vertical: 7.0),
            child: Text(
              'Amount',
              style: TextStyle(color: Colors.grey[800]),
            ),
          ),

          Divider(
            height: 20.0,
            color: Colors.grey[800],
          ),


            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 7.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
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
                        Navigator.pushNamed(context, '/savedBudget');
                      },
                  ),
                  ),
                ),
              ],
            ),





        ],
      ),
    );
  }
}
