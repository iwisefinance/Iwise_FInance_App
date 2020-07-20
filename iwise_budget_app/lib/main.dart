import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:iwisebudgetapp/splashscreen/splashScreen.dart';
import 'package:iwisebudgetapp/onboardingScreen/screens/landingPage.dart';
import 'package:iwisebudgetapp/iWallet/iwallet.dart';
import 'package:iwisebudgetapp/budgets/screens/add-budget.dart';
import 'package:iwisebudgetapp/budgets/screens/saved-budgets.dart';
import 'package:iwisebudgetapp/budgets/screens/welldone-screen.dart';
import 'package:iwisebudgetapp/budgets/screens/create-budget.dart';
import 'package:iwisebudgetapp/signup/signUp.dart';
import 'package:iwisebudgetapp/login/login.dart';
import 'budgets/screens/add-budget.dart';
import 'budgets/screens/create-budget.dart';
import 'package:iwisebudgetapp/components/individualDashboard.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
      Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        platform: TargetPlatform.iOS,
      ),
      home: SplashScreen(),
      routes: {
        '/individualDashboard': (context) => IndividualDashboard(),
        '/login': (context) => Login(),
        '/onboarding': (context) => LandingPage(),
        '/signUp': (context) => SignUp(),
        '/wallet': (context) => Wallet(),
        '/createBudget': (context) => CreateBudget(),
        '/addBudget': (context) => AddBudget(),
        '/savedBudget': (context) => SavedBudget(),
        '/wellDone': (context) => WellDoneScreen(),
      },

    );
  }
}
