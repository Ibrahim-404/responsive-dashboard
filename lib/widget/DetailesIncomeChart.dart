import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Detailesincomechart extends StatefulWidget {
  const Detailesincomechart({super.key});

  @override
  State<Detailesincomechart> createState() => _DetailesincomechartState();
}

class _DetailesincomechartState extends State<Detailesincomechart> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1,
        child: Padding(
            padding: EdgeInsets.all(30), child: PieChart(getChartData())));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, TouchResponse) {
          currentIndex =
              TouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: currentIndex == 0 ? -2 : null,
          titleStyle: currentIndex == 0
              ? TextStyle(color: Colors.black)
              : TextStyle(color: Colors.white),
          title: currentIndex == 0 ? 'Design service' : null,
          radius: currentIndex == 0 ? 30 : 20,
          value: 40,
          color: Color(0xFF208CC8),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: currentIndex == 1 ? -2.6 : null,
          titleStyle: currentIndex == 1
              ? TextStyle(color: Colors.black)
              : TextStyle(color: Colors.white),
          title: currentIndex == 1 ? 'Design product' : null,
          radius: currentIndex == 1 ? 30 : 20,
          value: 25,
          color: Color(0xFF4EB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: currentIndex == 2 ? -2 : null,
          titleStyle: currentIndex == 2
              ? TextStyle(color: Colors.black)
              : TextStyle(color: Colors.white),
          title: currentIndex == 2 ? 'Product royalti' : null,
          radius: currentIndex == 2 ? 30 : 20,
          value: 20,
          color: Color(0xFF064061),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: currentIndex == 3 ? -2 : null,
          titleStyle: currentIndex == 3
              ? TextStyle(color: Colors.black)
              : TextStyle(color: Colors.white),
          title: currentIndex == 3 ? 'Other' : null,
          radius: currentIndex == 3 ? 30 : 20,
          value: 22,
          color: Color(0xFFE2DECD),
        ),
      ],
      sectionsSpace: 0,
    );
  }
}
