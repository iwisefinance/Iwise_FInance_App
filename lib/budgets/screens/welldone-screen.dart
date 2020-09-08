import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WellDoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset('assets/welldone.png'),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 0.0,
                vertical: 20.0,
              ),
              child: Text(
                'WELL DONE',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 30.0,
                  fontFamily: 'Roboto/Roboto-Regular.ttf',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 20.0,
              ),
              child: Text(
                'You just got 30 Points for creating your first budget. Achieve your goal and get more goodies. ',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20.0,
                  fontFamily: 'Roboto/Roboto-Regular.ttf',
                ),
              ),
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
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
                      'View Points',
                      style: TextStyle(
                        fontFamily: 'Roboto/Roboto-Medium.ttf',
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/wellDone');
                    },
                  ),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0,),
              child: FlatButton(
                child: Text('VIEW BUDGETS',
                  style: TextStyle(
                    fontFamily: 'Roboto/Roboto-Medium.ttf',
                    fontSize: 15.0,
                    color: Colors.blue[700],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                onPressed: (){},
              ),
            ),

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/addBudget');},
        child: Text('Exit'),

      ),
    );
  }
}
