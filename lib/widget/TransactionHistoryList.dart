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
            style: AppStyle.styleSemiBold16
                .copyWith(overflow: TextOverflow.ellipsis, fontSize: 12),
          ),
          subtitle: Text(
            subtitle,
            style: AppStyle.styleMedium16.copyWith(
                color: Color(0xFFAAAAAA),
                overflow: TextOverflow.ellipsis,
                fontSize: 12),
          ),
          trailing: Text(
            Amount,
            style: AppStyle.styleMedium20.copyWith(
                color: isActive
                    ? Color(0xFFF3735E)
                    : Color(
                        0xFF7DD97B,
                      ),
                fontSize: 12),
          )),
    );
  }
}

class LoopingForTransactionHistoryList extends StatelessWidget {
  LoopingForTransactionHistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: TransactionHistoryDate.length,
        itemBuilder: (context, index) {
          return TransactionHistoryList(
            isActive: index == 0,
            title: TransactionHistoryDate[index]['title'],
            subtitle: TransactionHistoryDate[index]['subTitle'],
            Amount: TransactionHistoryDate[index]['money'],
          );
        });
  }
}
