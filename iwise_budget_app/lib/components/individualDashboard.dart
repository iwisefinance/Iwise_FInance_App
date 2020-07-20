
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import './colors.dart';
import './dashboardCard.dart';
import './drawer.dart';
import 'package:iwisebudgetapp/login/login.dart';
import 'package:iwisebudgetapp/budgets/AppAndBottomNavigation/Bottom_Navigation.dart';
class IndividualDashboard extends StatefulWidget {
	@override
	_IndividualDashboardState createState() => _IndividualDashboardState();
}

class _IndividualDashboardState extends State<IndividualDashboard> {
	double points = 0.000;
	String name = "Tee";
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar:AppBar(
				elevation: 0.0,
				backgroundColor: mainColor,
				title: Text('Hi '+name,style: TextStyle(fontSize: 24),),
				actions: [
					Icon(
						Icons.notifications,
						color: white,
					)
				],

			),
			drawer: CustomDrawer(),
			backgroundColor:backgroundColor,
			body: SingleChildScrollView(
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: [
						Container(
							height: 100,
							width: double.infinity,
							decoration: BoxDecoration(
								color: mainColor,
								borderRadius: BorderRadius.only(
										bottomRight: Radius.circular(10),
										bottomLeft: Radius.circular(10)),
							),
							child: Padding(
								padding: const EdgeInsets.only(left:16,right: 24, top: 30),
								child: Column(
									mainAxisAlignment: MainAxisAlignment.start,
									crossAxisAlignment: CrossAxisAlignment.start,
									children: [
										Text(
											'Point Earned',
											style: TextStyle(color: white.withOpacity(0.5), fontSize: 16),
										),
										SizedBox(height: 12,),
										Row(
											children: [
												Image.asset('assets/coins.png'),
												SizedBox(width: 16,),
												Text(points.toString(),style: TextStyle(color: white,fontSize: 16),)
											],
										)
									],
								),
							),
						),
						SizedBox(height: 30,),
						Padding(
							padding: EdgeInsets.symmetric(horizontal:16.0),
							child: Row(
								children: [
									DashboardCard(
										img: 'assets/icon1.svg',
										title: 'Budget',
										onpressed: (){
												Navigator.pushReplacementNamed(context, '/createBudget');
										},
									),
									SizedBox(width: 10,),
									DashboardCard(
										img: 'assets/icon2.svg',
										title: 'Tracker',
										onpressed: (){
										},
									),
									SizedBox(width: 10,),
									DashboardCard(
										img: 'assets/icon2.svg',
										title: 'Advice',
										onpressed: (){
											Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Login()));
										},
									)
								],
							),
						),
						SizedBox(height: 15,),
						Divider(),
						SizedBox(height: 10,),
						Padding(
							padding: const EdgeInsets.symmetric(horizontal:16.0),
							child: Text('Coming Soon',style: TextStyle(fontSize: 16),),
						),
						SizedBox(height: 20,),
						Padding(
							padding: const EdgeInsets.symmetric(horizontal:16.0),
							child: Row(
								children: [
									DashboardCard(
										img: 'assets/icon1.svg',
										iconColor: Color(0xff8D6C9F),
										boxColor: Color(0xff8D6C9F).withOpacity(0.1),
										title: 'Loans',

									),
									SizedBox(width: 40,),
									DashboardCard(
										img: 'assets/icon2.svg',
										iconColor: Color(0xff8D6C9F),
										boxColor: Color(0xff8D6C9F).withOpacity(0.1),
										title: 'Investments',
									),
									SizedBox(width: 40,),
								],
							),
						),

						Divider(),
						SizedBox(height: 24,),
						Padding(
							padding: const EdgeInsets.symmetric(horizontal: 16),
							child: Text('No Activities Yet',style: TextStyle(fontSize: 16),),
						),
						Center(child: Image.asset('assets/mirage-list-is-empty 2.png')),

					],
				),
			),
			bottomNavigationBar: BottomNavigation(),
		);
	}
}