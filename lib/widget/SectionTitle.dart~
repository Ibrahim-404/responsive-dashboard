
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/FinanceControlCenter.dart';

import '../TextStyleInMyProject.dart';

class SectionTitle extends StatefulWidget {
  SectionTitle({super.key, required this.title, this.ItemInDropDown});
  String title;
  List<String>? ItemInDropDown = [];
  @override
  State<SectionTitle> createState() => _MyWidgetState();
}
class _MyWidgetState extends State<SectionTitle> {
  // Initialize the dropdown value based on the first item in the list or a default value
  String DropdownValue = Divisionoftheyear.first;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.title, style: AppStyle.styleSemiBold20),
        DropdownButton<String>(
          borderRadius: BorderRadius.circular(20),
          padding: EdgeInsets.only(top: 10),
          elevation: 0,
          style: AppStyle.styleMedium16,
          value: DropdownValue,
          icon: Icon(Icons.arrow_downward),
          items: (widget.ItemInDropDown != null && widget.ItemInDropDown!.isNotEmpty)
              ? widget.ItemInDropDown!.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList()
              : Divisionoftheyear.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              DropdownValue = value!;
            });
          },
        ),
      ],
    );
  }
}
