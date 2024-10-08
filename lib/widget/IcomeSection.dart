import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/SectionTitle.dart';

class Icomesection extends StatefulWidget {
  Icomesection({super.key});
  @override
  State<Icomesection> createState() => _IcomesectionState();
}

class _IcomesectionState extends State<Icomesection> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: IcomesDigram());
  }
}

class IcomesDigram extends StatefulWidget {
  const IcomesDigram({super.key});

  @override
  State<IcomesDigram> createState() => _IcomesDigramState();
}

class _IcomesDigramState extends State<IcomesDigram> {
  @override
  int currentIndex = -1;
  Widget build(BuildContext context) {
    return PieChart(getChartData());
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
          radius: currentIndex == 0 ? 30 : 20,
          value: 40,
          color: Color(0xFF208CC8),
          showTitle: false,
        ),
        PieChartSectionData(
          radius: currentIndex == 1 ? 30 : 20,
          value: 25,
          showTitle: false,
          color: Color(0xFF4EB7F2),
        ),
        PieChartSectionData(
          radius: currentIndex == 2 ? 30 : 20,
          value: 20,
          showTitle: false,
          color: Color(0xFF064061),
        ),
        PieChartSectionData(
          radius: currentIndex == 3 ? 30 : 20,
          value: 22,
          showTitle: false,
          color: Color(0xFFE2DECD),
        ),
      ],
      sectionsSpace: 0,
    );
  }
}
