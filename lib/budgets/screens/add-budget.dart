import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iwisebudgetapp/budgets/AppAndBottomNavigation//Bottom_Navigation.dart';
import 'package:iwisebudgetapp/budgets/AddBudgetTabBarViews/AddTab_January.dart';
import 'package:iwisebudgetapp/budgets/AddBudgetTabBarViews/AddTab_February.dart';
import 'package:iwisebudgetapp/budgets/AppAndBottomNavigation/AddBudget_AppBar.dart';

class AddBudget extends StatelessWidget {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(160.0),
          child: AddBudgetAppBar(), // here the desired height
        ),
        body: TabBarView(
          children: <Widget>[
            AddTabJanuary(),
            AddTabFebruary(),
            AddTabFebruary(),
            AddTabFebruary(),
            AddTabFebruary(),
            AddTabFebruary(),
            AddTabFebruary(),
            AddTabFebruary(),
            AddTabFebruary(),
            AddTabFebruary(),
            AddTabFebruary(),
            AddTabFebruary(),
          ],
        ),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}
