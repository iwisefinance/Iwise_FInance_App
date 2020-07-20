import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddBudgetAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      title:  Text('Add Budget',
        style: TextStyle(color: Colors.grey[800]),),

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),

      backgroundColor: Colors.white,
      elevation: 0.0,

      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: IconButton(
            icon: Icon(Icons.notifications_none,
              color: Colors.blueGrey[800],
              size: 26.0,
            ),
            onPressed: (){
              print("clicked");
            },
          ),
        ),
      ],

      bottom: TabBar(
        isScrollable: true,
        unselectedLabelColor: Colors.blue[50],
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blue,
        ),
        tabs: <Widget>[
          Tab(
            child: Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue[50], width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('January', style: TextStyle( color: Colors.grey[700]),
                  ),
                ),
              ),
            ),
          ),

          Tab(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue[50], width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('February', style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ),
            ),
          ),

          Tab(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue[50], width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('March', style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ),
            ),
          ),

          Tab(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue[50], width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('April', style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ),
            ),
          ),

          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue[50], width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('May', style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ),
            ),
          ),

          Tab(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue[50], width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('June', style: TextStyle( color: Colors.grey[700]),
                  ),
                ),
              ),
            ),
          ),

          Tab(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue[50], width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('July', style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ),
            ),
          ),

          Tab(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue[50], width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('August', style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ),
            ),
          ),

          Tab(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue[50], width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('September', style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ),
            ),
          ),

          Tab(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue[50], width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('October', style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ),
            ),
          ),


          Tab(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue[50], width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('November', style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ),
            ),
          ),


          Tab(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue[50], width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('December', style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ),
            ),
          ),


        ],
      ),

    );
  }
}