import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/ActiveBalanceCard.dart';
import 'package:responsive_dash_board/widget/UnActiveBalanceCard.dart';

class SelectBalanceStatuse extends StatelessWidget {
  final VoidCallback onTap;
  final String iconBalance;
  final String title;
  final String subTitle;
  final String money;
  final bool isSelected;

  SelectBalanceStatuse({
    super.key,
    required this.onTap,
    required this.iconBalance,
    required this.title,
    required this.subTitle,
    required this.money,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: isSelected
          ? ActiveBalanceCard(
        iconBalance: iconBalance,
        money: money,
        subTitle: subTitle,
        title: title,
      )
          : UnActiveBalanceCard(
        iconBalance: iconBalance,
        money: money,
        subTitle: subTitle,
        title: title,
      ),
    );
  }
}