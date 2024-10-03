import 'package:flutter/material.dart';
import 'package:responsive_dash_board/mainScreen.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
      builder: (context) =>
      ResponiveAndAdptiveDashdoard()));
}

class ResponiveAndAdptiveDashdoard extends StatelessWidget {
  const ResponiveAndAdptiveDashdoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      // color:Color(0xFFAAAAAA),
    );
  }
}
