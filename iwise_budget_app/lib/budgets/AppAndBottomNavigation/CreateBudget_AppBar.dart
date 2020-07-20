import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppAndTabBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      title:  Row(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Text('Budget',
            style: TextStyle(
		      color: Color(0xff555A5B),
		      fontSize: 18.0
            ),),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
      ),
      backgroundColor: Color(0xffFFFFFF),
      actions: <Widget>[
        Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: IconButton(
                icon: Icon(Icons.notifications_none,
                color: Color(0xff555A5B),
                size: 20.0,
                ),
                onPressed: (){},
              ),
            ),
      ],

      bottom: TabBar(
	      indicatorColor: null,
          isScrollable: true,
          unselectedLabelColor: Color(0xffF7F9FC),
          labelColor: Color(0xffF7F9FC),
          indicatorSize: TabBarIndicatorSize.label,
          indicator: BoxDecoration(

            borderRadius: BorderRadius.circular(15),
            color: Colors.blue,
          ),
          tabs: <Widget>[
            Tab(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.blue[50]),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('January', style: TextStyle( color: Color(0xff555A5B)),
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
	                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
	                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
	                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
	                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
	                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
	                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
	                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
	                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
	                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
	                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
	                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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