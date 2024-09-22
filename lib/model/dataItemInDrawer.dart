import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/App_images.dart';
// class itemDataInDrawer{
//   final String name;
//   final String image;
//   itemDataInDrawer({required this.name, required this.image});
// }
List<Map<String, dynamic>> drawerData = [
  {
    'icon': SvgPicture.asset(Assets.Dashboard2),
    'name': 'Dashboard',
  },
  {
    'icon': SvgPicture.asset(Assets.Transaction),
    'name': 'Transaction',
  },
  {
    'icon': SvgPicture.asset(Assets.Statistics),
    'name': 'Statistics',
  },
  {
    'icon': SvgPicture.asset(Assets.Wallet),
    'name': 'Wallet account',
  },
  {
    'icon': SvgPicture.asset(Assets.Investments),
    'name': 'My Investments',
  },
];