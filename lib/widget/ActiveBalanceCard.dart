import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/TextStyleInMyProject.dart';

class ActiveBalanceCard extends StatelessWidget {
  final String iconBalance;
  final String title;
  final String subTitle;
  final String money;
ActiveBalanceCard({
  super.key,
  required this.title,
  required this.subTitle,
  required this.money,
  required this.iconBalance,
});

@override
Widget build(BuildContext context) {
  return Container(
    // width: 150,
    decoration: BoxDecoration(
      color: Colors.blue,
      border: Border.all(
        color: Color(0xFFF1F1F1),
        width: 0.4,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    padding: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(iconBalance),
            Icon(Icons.arrow_forward_ios_rounded,color:Colors.white,),
          ],
        ),
        SizedBox(height: 34),
        Text(
          title,
          style: AppStyle.styleSemiBold16(context).copyWith(color: Colors.white),
        ),
        Text(
          subTitle,
          style: AppStyle.styleRegular14(context).copyWith(color: Colors.white),
        ),
        Text(
          "\$${money}",
          style: AppStyle.styleSemiBold24(context).copyWith(color: Colors.white),
        ),
      ],
    ),
  );
}
}