import 'package:flutter/material.dart';
import 'package:responsive_dash_board/adptiveLayout.dart';
import 'package:responsive_dash_board/descktopHomeScreen.dart';
import 'package:responsive_dash_board/widget/CustomTextField.dart';
import 'package:responsive_dash_board/widget/TestSection.dart';
class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     backgroundColor: Color(0xFFE5E5E5),
    body:AdptiveLayout(
      mobileLayout: (context) => Container(
        child: Center(
          child: Text(
            "mobile layout ",
            style: TextStyle(fontSize: 30, color: Colors.red),
          ),
        ),
      ),
      tabletLayout:(context) =>Container(
        child: Center(
          child: Text(
            "mobile layout ",
            style: TextStyle(fontSize: 30, color: Colors.red),
          ),
        ),
      ),
      descktopLayout: (context) => Desktophomescreen(),
    )
    );
  }
}