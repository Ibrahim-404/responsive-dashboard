import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/TextStyleInMyProject.dart';

class UnActiveItemInDrawer extends StatelessWidget {
  const UnActiveItemInDrawer({
    super.key,
    required this.icon,
    required this.name,
  });

  final SvgPicture icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        name,
        style: AppStyle.styleRegular16,
      ),
    );
  }
}