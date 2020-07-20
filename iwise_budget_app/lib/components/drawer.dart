
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './colors.dart';

class CustomDrawer extends StatelessWidget {
	String name = 'Olatayo';
	String email = 'Tayo@gmail.com';
	@override
	Widget build(BuildContext context) {
		return Drawer(
			elevation: 10,
			child: Stack(
				children: [
					Padding(
						padding: const EdgeInsets.only(top: 40.0, left: 16),
						child: Column(
							crossAxisAlignment: CrossAxisAlignment.start,
							children: [
								Row(
									children: [
										CircleAvatar(
											backgroundImage: AssetImage('assets/avatar.png'),
											minRadius: 30,
										),
										SizedBox(
											width: 20,
										),
										Column(
											crossAxisAlignment: CrossAxisAlignment.start,
											mainAxisAlignment: MainAxisAlignment.start,
											children: [
												Text(
													name,
													style:
													TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
												),
												SizedBox(
													height: 10,
												),
												Text(email),
												FlatButton(
														onPressed: null,
														child: Container(
															width: 74,
															height: 25,
															decoration: BoxDecoration(
																color: Color(0xffff958a),
																borderRadius: BorderRadius.circular(5),
															),
															child: Center(
																	child: Text(
																		'Edit Profile',
																		style: TextStyle(color: white, fontSize: 12),
																	)),
														)),
											],
										)
									],
								),
								SizedBox(
									height: 40,
								),
								DrawerProps(
									imgPath: 'assets/business.svg',
									title: 'My Business',
									onPress: () {},
								),
								SizedBox(height: 24,),
								DrawerProps(
									imgPath: 'assets/card.svg',
									title: 'Add Bank Account ',
									onPress: () {},
								),
								SizedBox(height: 24,),
								DrawerProps(
									imgPath: 'assets/settings.svg',
									title: 'Settings',
									onPress: () {},
								),
								SizedBox(height: 24,),
								DrawerProps(
									imgPath: 'assets/insight.svg',
									title: 'Insight',
									onPress: () {},
								),

							],
						),
					),
					Positioned(
						bottom: 40,
						left: 16,
						child: Row(
							children: [
								SvgPicture.asset('assets/logout.svg'),
								SizedBox(width: 24,),
								Text(
									'Logout',
									style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
								),
							],
						),
					)
				],
			),
		);
	}
}

class DrawerProps extends StatelessWidget {
	final Function onPress;
	final String title;
	final String imgPath;

	const DrawerProps({Key key, this.onPress, this.title, this.imgPath})
			: super(key: key);
	@override
	Widget build(BuildContext context) {
		return FlatButton(
				onPressed: onPress,
				child: Row(
					mainAxisAlignment: MainAxisAlignment.spaceBetween,
					children: [
						Row(
							children: [
								SvgPicture.asset(imgPath),
								SizedBox(
									width: 24,
								),
								Text(
									title,
									style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
								),
							],
						),
						Icon(
							Icons.chevron_right,
							color: Colors.grey,
						)
					],
				));
	}
}