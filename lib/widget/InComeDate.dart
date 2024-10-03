import 'package:flutter/material.dart';
import 'package:responsive_dash_board/TextStyleInMyProject.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(incomeDetailsData.length, (index) {
        return IncomeDetailsItem(
          percentage: incomeDetailsData[index]['percentage'],
          color: incomeDetailsData[index]['color'],
          title: incomeDetailsData[index]['title'],
        );
      }),
    );
  }
}

class IncomeDetailsItem extends StatelessWidget {
  final Color color;
  final String title;
  final String percentage;

  IncomeDetailsItem({
    super.key,
    required this.title,
    required this.percentage,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
      title: Text(
        title,
        style:
            AppStyle.styleRegular16(context).copyWith(overflow: TextOverflow.ellipsis),
      ),
      trailing: Text(
        "$percentage%",
        style: AppStyle.styleMedium16(context).copyWith(
          color: Color(0xFF208CC8),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> incomeDetailsData = [
  {"color": Color(0xFF208CC8), "title": "Design service", "percentage": "40"},
  {"color": Color(0xFF4EB7F2), "title": "Design product", "percentage": "25"},
  {"color": Color(0xFF064061), "title": "Product royalty", "percentage": "20"},
  {"color": Color(0xFFE2DECD), "title": "Other", "percentage": "22"},
];
