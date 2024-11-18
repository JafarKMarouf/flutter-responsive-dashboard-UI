import 'package:flutter/material.dart';
import 'package:responsive_dashborad/widgets/custome_container.dart';
import 'package:responsive_dashborad/widgets/income_chart.dart';
import 'package:responsive_dashborad/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomeContainer(
      child: Column(
        children: [
          SizedBox(height: 20),
          IncomeHeader(),
          SizedBox(height: 16),
          IncomeChart()
        ],
      ),
    );
  }
}
