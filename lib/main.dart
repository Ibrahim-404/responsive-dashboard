import 'package:flutter/material.dart';
import 'package:responsive_dash_board/mainScreen.dart';

void main() {
  runApp(const ResponiveAndAdptiveDashdoard());
}

class ResponiveAndAdptiveDashdoard extends StatelessWidget {
  const ResponiveAndAdptiveDashdoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      // color:Color(0xFFAAAAAA),
    );
  }
}
