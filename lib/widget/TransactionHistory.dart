import 'package:flutter/material.dart';
import 'package:responsive_dash_board/TextStyleInMyProject.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Transaction History",
          style: AppStyle.styleSemiBold20(context),
        ),
        Text(
          "See all",
          style: AppStyle.styleMedium16(context).copyWith(
            color: Color(0xFF4EB7F2),
          ),
        )
      ],
    );
  }
}
