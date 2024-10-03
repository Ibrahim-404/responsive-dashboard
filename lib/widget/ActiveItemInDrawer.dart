import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/TextStyleInMyProject.dart';

class ActiveItemInDrawer extends StatelessWidget {
  const ActiveItemInDrawer({
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
        style: AppStyle.styleRegular16(context).copyWith(color: Colors.blue),
      ),
      trailing: Container(
        width: 3.7,
        // height: 40,
        color: Colors.blue,
      ),
    );
  }
}