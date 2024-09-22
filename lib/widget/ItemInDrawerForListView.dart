


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/TextStyleInMyProject.dart';
import 'package:responsive_dash_board/widget/ActiveItemInDrawer.dart';
import 'package:responsive_dash_board/widget/UnActiveItemInDrawer.dart';

class ItemInDrawerForListView extends StatelessWidget {
  final SvgPicture icon;
  final String name;
  final int itemNumber;
  final bool isSelected;
  final VoidCallback onTap;

  ItemInDrawerForListView({
    super.key,
    required this.icon,
    required this.name,
    required this.itemNumber,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Card(
          elevation: 0,
          color: Colors.white,
          child: isSelected
              ? ActiveItemInDrawer(icon: icon, name: name)
              : UnActiveItemInDrawer(icon: icon, name: name),
        ),
      ),
    );
  }
}

