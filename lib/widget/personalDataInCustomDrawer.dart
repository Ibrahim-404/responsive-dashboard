import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/TextStyleInMyProject.dart';
import 'package:responsive_dash_board/utils/App_images.dart';

class personalDataInCustomDrawer extends StatelessWidget {
  personalDataInCustomDrawer(
      {super.key, required this.Name, required this.Email});
  final String Name;
  final String Email;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Color(0xFFFAFAFA),
        elevation: 0,
        child: ListTile(
          leading: SvgPicture.asset(Assets.Demo),
          title: Text(
            Name,
            style: AppStyle.styleSemiBold16,
          ),
          subtitle: Text(Email, style: AppStyle.styleRegular14.copyWith(color:Color(0xFFAAAAAA),),),
        ),
      ),
    );
  }
}
