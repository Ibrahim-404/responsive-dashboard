import 'package:flutter/material.dart';
import 'package:responsive_dash_board/TextStyleInMyProject.dart';
import 'package:responsive_dash_board/model/TransactionHistoryDat.dart';

class TransactionHistoryList extends StatelessWidget {
  String title;
  String subtitle;
  String Amount;
  bool isActive;
  TransactionHistoryList(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.Amount,
      required this.isActive});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0.3,
      child: ListTile(
          title: Text(
            title,
            style: AppStyle.styleSemiBold16(context)
                .copyWith(overflow: TextOverflow.ellipsis),
          ),
          subtitle: Text(
            subtitle,
            style: AppStyle.styleMedium16(context).copyWith(
              color: Color(0xFFAAAAAA),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          trailing: Text(
            Amount,
            style: AppStyle.styleMedium20(context).copyWith(
              color: isActive
                  ? Color(0xFFF3735E)
                  : Color(
                      0xFF7DD97B,
                    ),
            ),
          )),
    );
  }
}

class LoopingForTransactionHistoryList extends StatelessWidget {
  LoopingForTransactionHistoryList({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
        children: TransactionHistoryDate.map((item) {
      return TransactionHistoryList(
        isActive: TransactionHistoryDate.indexOf(item) == 0,
        title: item['title'],
        subtitle: item['subTitle'],
        Amount: item['money'],
      );
    }).toList());
  }
}

