import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Screen/MobileScreen.dart';
import 'package:responsive_dash_board/Screen/Tablethomescreen.dart';
import 'package:responsive_dash_board/adptiveLayout.dart';
import 'package:responsive_dash_board/desktopHomeScreen.dart';
import 'package:responsive_dash_board/widget/CustomDrawerWidget.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  GlobalKey<ScaffoldState> Scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Container(
            color: Colors.white,
            width: MediaQuery.sizeOf(context).width * 0.7,
            child: Customdrawerwidget()),
        key: Scaffoldkey,
        appBar: MediaQuery.sizeOf(context).width < 750
            ? AppBar(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                toolbarHeight: 35,
                backgroundColor: Colors.white,
                elevation: 0,
                leading: GestureDetector(
                    onTap: () {
                      Scaffoldkey.currentState!.openDrawer();
                    },
                    child: Icon(Icons.menu)),
              )
            : null,
        backgroundColor: Color(0xFFE5E5E5),
        body: AdptiveLayout(
          mobileLayout: (context) => MobileLayout(),
          tabletLayout: (context) => Tablethomescreen(),
          descktopLayout: (context) => Desktophomescreen(),
        ));
  }
}
