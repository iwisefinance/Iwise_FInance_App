import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iwisebudgetapp/budgets/AppAndBottomNavigation//Bottom_Navigation.dart';

class SavedBudget extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160.0), // here the desired height

        child: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Budgets',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.white,
                size: 26.0,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(

                  child: Container(

                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    height: 80.0,
                    child: Text('Airline'),


                  ),
                ),
              ],
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(

                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 80.0,
                    child: Text('Airline'),
                  ),
                ),
              ],
            ),

            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
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
                      size: 30.0,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: FlatButton(
                    child: Text('Add Another Item',
                      style: TextStyle(
                        fontFamily: 'Roboto/Roboto-Medium.ttf',
                        fontSize: 20.0,
                        color: Colors.blue[700],
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/addBudget');
                    },
                  ),

                )

              ],

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
                        'Done',
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
                ),
              ],
            ),





          ],
        ),
      ),

      bottomNavigationBar: BottomNavigation(),
    );
  }
}
