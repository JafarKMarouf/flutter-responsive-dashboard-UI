import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashborad/models/pie_chart_section_data_model.dart';
import 'package:responsive_dashborad/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, p1) {
          activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          value: 40,
          color: const Color(0xff208CC8),
          radius: activeIndex == 0 ? 60 : 50,
          showTitle: true,
          title: activeIndex == 0 ? 'Design service' : '40%',
          titleStyle: AppStyles.styleMedium16.copyWith(color: Colors.black),
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
        ),
        PieChartSectionData(
          value: 25,
          color: const Color(0xff4EB7F2),
          radius: activeIndex == 1 ? 60 : 50,
          showTitle: true,
          title: activeIndex == 1 ? 'Design product' : '25%',
          titleStyle: AppStyles.styleMedium16.copyWith(color: Colors.black),
          titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,
        ),
        PieChartSectionData(
          value: 20,
          color: const Color(0xff064061),
          radius: activeIndex == 2 ? 60 : 50,
          showTitle: true,
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          titleStyle: AppStyles.styleMedium16.copyWith(color: Colors.black),
          titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
        ),
        PieChartSectionData(
          value: 22,
          color: const Color(0xffE2DECD),
          radius: activeIndex == 3 ? 60 : 50,
          showTitle: true,
          title: activeIndex == 3 ? 'Other' : '22%',
          titleStyle: AppStyles.styleMedium16.copyWith(color: Colors.black),
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
        ),
      ],
    );
  }
}
