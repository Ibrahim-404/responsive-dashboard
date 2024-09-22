import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/App_images.dart';
import 'package:responsive_dash_board/widget/CustomTextField.dart';
import 'package:responsive_dash_board/widget/LoopingAtUserProfileCardData.dart';

import '../TextStyleInMyProject.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Quick invoice",
                  style: AppStyle.styleSemiBold16.copyWith(color: Colors.black),
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0xFFFAFAFA),
                  child: Icon(
                    Icons.add,
                    color: Color(0xFF4EB7F2),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Latest Transaction',
                style: AppStyle.styleMedium16,

              ),
            ),
          ),
          SizedBox(height: 10),
          LoopingAtUserProfileCardData(),
          Divider(height: 48, color: Color(0xFFF1F1F1), thickness: 1),
          MoneyContorl(),
        ],
      ),
    );
  }
}

class LatestTransactionInDetalse extends StatelessWidget {
  String picture;
  String title;
  String subtitle;
  LatestTransactionInDetalse({
    super.key,
    required this.picture,
    required this.title,
    required this.subtitle,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(picture),
          title: Text(
            title,
            style: AppStyle.styleSemiBold16,
          ),
          subtitle: Text(
            subtitle,
            style: AppStyle.styleRegular12,
          ),
        ),
      ),
    );
  }
}
