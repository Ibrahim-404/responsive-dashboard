import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/UserProfileCardData.dart';
import 'package:responsive_dash_board/widget/QuickInvoice.dart';

class LoopingAtUserProfileCardData extends StatelessWidget {
  LoopingAtUserProfileCardData({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: UserProfileCardData.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
              child: LatestTransactionInDetalse(
            picture: UserProfileCardData[index]['icon'],
            title: UserProfileCardData[index]['name'],
            subtitle: UserProfileCardData[index]['email'],
          ));
        },
      ),
    );
  }
}
