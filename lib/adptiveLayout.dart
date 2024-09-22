import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdptiveLayout extends StatelessWidget {
 AdptiveLayout({super.key,required this.mobileLayout,required this.tabletLayout,required this.descktopLayout});
WidgetBuilder mobileLayout, tabletLayout, descktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileLayout(context);
      } else if (constraints.maxWidth >= 600 && constraints.maxWidth < 750) {
        return tabletLayout(context);
      } else {
        return descktopLayout(context);
      }
    });
  }
}
