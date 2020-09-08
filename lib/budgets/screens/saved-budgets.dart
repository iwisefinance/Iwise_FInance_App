import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iwisebudgetapp/budgets/AppAndBottomNavigation//Bottom_Navigation.dart';

class SavedBudget extends StatelessWidget {
  final String text;

  const SavedBudget({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160.0), // here the desired height

        child: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Color(0xFFFFFFFF),
          title: Text(
            'Budgets',
            style: TextStyle(
              color: Colors.black,
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
      body: SingleChildScrollView(
        child: Container(
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
                      'Budgeted Amount:',
                      style:
                          TextStyle(color: Color(0xFF555A5B), fontSize: 13.0),
                    ),
                    Text(
                      'N $text',
                      style: TextStyle(
                          color: Color(0xFF0076BC),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
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
                      '-------:',
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
              Divider(
                thickness: 2.0,
                height: 10,
              ),
              SizedBox(
                height: 10.0,
              ),
              //See Details
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
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
                    'See Details',
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

              SizedBox(height: 15.0),
              //see older budget
              Text(
                'See Older Budget',
                style: TextStyle(color: Color(0xFF0076BC), fontSize: 16.0),
              ),
              SizedBox(height: 15.0),
              //Older Budget Cards
              Card(
                color: Color(0xFFC4C4C4),
                child: ListTile(
                    contentPadding: EdgeInsets.all(15.0),
                    leading: Icon(Icons.history),
                    title: Text(
                      'April 2019 Budget',
                    ),
                    trailing: Icon(Icons.more_vert),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Budget: N150,000',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        Text(
                          'Total Amount Spent: N129,000',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    )),
              ),
              Card(
                color: Color(0xFFC4C4C4),
                child: ListTile(
                    contentPadding: EdgeInsets.all(15.0),
                    leading: Icon(Icons.history),
                    title: Text('March 2019 Budget'),
                    trailing: Icon(Icons.more_vert),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Budget: N150,000',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        Text('Total Amount Spent: N129,000',
                            style: TextStyle(fontSize: 12.0)),
                      ],
                    )),
              ),
              Card(
                color: Color(0xFFC4C4C4),
                child: ListTile(
                    contentPadding: EdgeInsets.all(15.0),
                    leading: Icon(Icons.history),
                    title: Text('February 2019 Budget'),
                    trailing: Icon(Icons.more_vert),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Budget: N150,000',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        Text('Total Amount Spent: N129,000',
                            style: TextStyle(fontSize: 12.0)),
                      ],
                    )),
              ),
              Card(
                color: Color(0xFFC4C4C4),
                child: ListTile(
                    contentPadding: EdgeInsets.all(15.0),
                    leading: Icon(Icons.history),
                    title: Text('January 2019 Budget'),
                    trailing: Icon(Icons.more_vert),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Budget: N150,000',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        Text('Total Amount Spent: N129,000',
                            style: TextStyle(fontSize: 12.0)),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
