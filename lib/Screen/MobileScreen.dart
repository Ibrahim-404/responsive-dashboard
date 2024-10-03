import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/FinanceControlCenter.dart';
import 'package:responsive_dash_board/widget/RightSection.dart';
import 'package:responsive_dash_board/widget/TestSection.dart';
class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical, child: Column(
        children: [
          FinanceControlCenter(),
          RightSection(),
          SizedBox(
            height: 10,
          ),
          Testsection(),
        ],
      )),
    );
  }
}