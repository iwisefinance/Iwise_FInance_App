
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'colors.dart';

class DashboardCard extends StatelessWidget {
	final String title;
	final String img;
	final Function onpressed;
	final Color iconColor;
	final Color boxColor;


	const DashboardCard({Key key, @required this.title, @required this.img, this.onpressed, this.iconColor, this.boxColor}) : super(key: key);
	@override
	Widget build(BuildContext context) {
		return Expanded(
			child: InkWell(
				onTap: onpressed,
				child: Container(
					height: 100,
					decoration: BoxDecoration(
						color: white,
						borderRadius: BorderRadius.circular(15),
					),
					child: Padding(
						padding: const EdgeInsets.all(12.0),
						child: Column(
							crossAxisAlignment: CrossAxisAlignment.start,
							children: [
								Container(
									width: 36,
									height: 36,
									decoration: BoxDecoration(
										shape: BoxShape.circle,
										color: boxColor,

									),
									child: SvgPicture.asset(img,width: 16,height: 16,color:iconColor, fit: BoxFit.scaleDown,),
								),
								SizedBox(height: 15,),
								Text(title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
							],
						),
					),
				),

			),
		);
	}
}