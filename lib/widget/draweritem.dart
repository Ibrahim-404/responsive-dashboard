import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/dataItemInDrawer.dart';
import 'package:responsive_dash_board/widget/ItemInDrawerForListView.dart';
class DrawerSetting extends StatefulWidget {
  const DrawerSetting({super.key});

  @override
  State<DrawerSetting> createState() => _DrawerSettingState();
}

class _DrawerSettingState extends State<DrawerSetting> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerData.length,
      itemBuilder: (context, index) {
        return ItemInDrawerForListView(
          icon: drawerData[index]['icon'],
          name: drawerData[index]['name'],
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          itemNumber: index,
          isSelected: selectedIndex == index,
        );
      },
    );
  }
}