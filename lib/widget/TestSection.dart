import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/IcomeSection.dart';
import 'package:responsive_dash_board/widget/InComeDate.dart';
import 'package:responsive_dash_board/widget/SectionTitle.dart';

class Testsection extends StatelessWidget {
  const Testsection({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SectionTitle(title: "Transaction History"),
          Expanded(
            child: Row(
              children: [
                Expanded(flex: 1, child: Icomesection()),
                Expanded(flex: 2, child: IncomeDetails())
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
