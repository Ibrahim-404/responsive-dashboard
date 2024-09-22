import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/RightSection.dart';
import 'package:responsive_dash_board/widget/visaCard.dart';

class LoppingatCard extends StatelessWidget {
  final PageController pageControler;
  const LoppingatCard({super.key, required this.pageControler});
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller:pageControler ,
      children:List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.only(left:3),
          child: MyCard(),
        );
      },),
    );
  }
}
