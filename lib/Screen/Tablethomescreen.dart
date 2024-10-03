import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Screen/MobileScreen.dart';
import 'package:responsive_dash_board/widget/CustomDrawerWidget.dart';
class Tablethomescreen extends StatelessWidget {
  const Tablethomescreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(color: Colors.white, child:Customdrawerwidget()),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          flex: 3,
          child: MobileLayout(),
        ),
      ],
    );
  }
}

