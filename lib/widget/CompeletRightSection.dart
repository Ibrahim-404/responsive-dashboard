import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/RightSection.dart';
import 'package:responsive_dash_board/widget/TestSection.dart';

class CompleteRightSection extends StatelessWidget {
  CompleteRightSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RightSection(),
        SizedBox(height: 12),
        Testsection(),
      ],
    );
  }
}
