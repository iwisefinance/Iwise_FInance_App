
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _BottomNavigationState();
}

int _currentIndex = 0;

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: FlatButton(
              onPressed: (){
                Navigator.pushReplacementNamed(context, '/individualDashboard');
              },
                child: Container(
                  child: Icon(Icons.home, size: 30.0, color: Color(0xff555A5B)),
                ),
            ),
            title: Text('Home'),
            backgroundColor: Colors.blue,
          ),

          BottomNavigationBarItem(
            icon: FlatButton(
              onPressed: (){
//                Navigator.pushReplacementNamed(context, '/individualDashboard');
              },
              child: Container(
                child: Icon(Icons.equalizer, size: 30.0, color: Color(0xff555A5B)),
              ),
            ),
            title: Text('Insights'),
            backgroundColor: Colors.blue,
          ),

          BottomNavigationBarItem(
            icon: FlatButton(
              onPressed: (){
//                Navigator.pushReplacementNamed(context, '/individualDashboard');
              },
              child: Container(
                child: Icon(Icons.receipt, size: 30.0, color: Color(0xff555A5B)),
              ),
            ),
            title: Text('Transactions'),
            backgroundColor: Colors.blue,
          ),

          BottomNavigationBarItem(
            icon: FlatButton(
              onPressed: (){
                Navigator.pushReplacementNamed(context, '/wallet');
              },
              child: Container(
                child: Icon(Icons.account_balance_wallet, size: 30.0, color: Color(0xff555A5B)),
              ),
            ),
            title: Text('Wallet'),
            backgroundColor: Colors.blue,
          ),
        ],

        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      );

  }
}

