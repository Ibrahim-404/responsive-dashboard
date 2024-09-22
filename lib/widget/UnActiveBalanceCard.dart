import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/TextStyleInMyProject.dart';

class UnActiveBalanceCard extends StatelessWidget {
  final String iconBalance;
  final String title;
  final String subTitle;
  final String money;

  UnActiveBalanceCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.money,
    required this.iconBalance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      // width: 150,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFF1F1F1),
          width: 0.4,
        ),
        color: Colors.white,
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
              Icon(Icons.arrow_forward_ios_rounded, color: Colors.black),
            ],
          ),
          SizedBox(height: 34),
          Text(
            title,
            style: AppStyle.styleSemiBold16.copyWith(color: Color(0xFF064061)),
          ),
          Text(
            subTitle,
            style: AppStyle.styleRegular14.copyWith(color: Color(0xFFAAAAAA)),
          ),
          Text(
            "\$${money}",
            style: AppStyle.styleSemiBold24.copyWith(color: Color(0xFF4EB7F2)),
          ),
        ],
      ),
    );
  }
}