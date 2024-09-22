import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/CustomDrawerWidget.dart';
import 'package:responsive_dash_board/widget/FinanceControlCenter.dart';
import 'package:responsive_dash_board/widget/RightSection.dart';
import 'package:responsive_dash_board/widget/TestSection.dart';

class Desktophomescreen extends StatelessWidget {
  Desktophomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 1,
        child: Container(color: Colors.white, child: Customdrawerwidget()),
      ),
      SizedBox(
        width: 15,
      ),
      Expanded(
        flex: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical, child: FinanceControlCenter()),
        ),
      ),
      SizedBox(
        width: 15,
      ),
      CompleteRightSection(),
    ]);
  }
}

class CompleteRightSection extends StatelessWidget {
  CompleteRightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          RightSection(),
          const SizedBox(height: 4),
          Expanded(
              child:
                  Testsection()), // Make Testsection expand to fill the available space
        ],
      ),
    );
  }
}
