import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/CompeletRightSection.dart';
import 'package:responsive_dash_board/widget/CustomDrawerWidget.dart';
import 'package:responsive_dash_board/widget/FinanceControlCenter.dart';

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
        flex: 3,
        child: CustomScrollView(slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: FinanceControlCenter(),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(flex: 1, child: CompleteRightSection()),
              ],
            ),
          ),
        ]),
      )
    ]);
  }
}
