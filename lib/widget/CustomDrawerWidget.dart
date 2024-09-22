import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/App_images.dart';
import 'package:responsive_dash_board/widget/UnActiveItemInDrawer.dart';
import 'package:responsive_dash_board/widget/draweritem.dart';
import 'package:responsive_dash_board/widget/personalDataInCustomDrawer.dart';
class Customdrawerwidget extends StatelessWidget {
  Customdrawerwidget({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: const SizedBox(
            height: 8,
          ),
        ),
        SliverToBoxAdapter(
          child: personalDataInCustomDrawer(
            Name: 'Lekan Okeowo',
            Email: 'demo@gmail.com',
          ),
        ),
        // SliverToBoxAdapter(
        //   child: const SizedBox(
        //     height: 15,
        //   ),
        // ),
        const DrawerSetting(),
        // Expanded(child: Container()),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                ),
              ),
              // const drawerBottom(),
              Card(
                elevation: 0,
                color: Colors.white,
                child: UnActiveItemInDrawer(
                  icon: SvgPicture.asset(Assets.Setting2),
                  name:'Setting',
                ),
              ),
              Card(
                elevation: 0,
                color: Colors.white,
                child: UnActiveItemInDrawer(
                  icon: SvgPicture.asset(Assets.Logout),
                  name:'Logout Account',
                ),
              ),
            ],
          ),
        ),
        // const SizedBox(height: 60)
      ],
    );
  }
}


