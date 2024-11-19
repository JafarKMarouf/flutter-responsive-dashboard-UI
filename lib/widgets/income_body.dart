import 'package:flutter/material.dart';
import 'package:responsive_dashborad/utils/size_config.dart';
import 'package:responsive_dashborad/widgets/detailed_income_chart.dart';
import 'package:responsive_dashborad/widgets/income_details.dart';
import 'package:responsive_dashborad/widgets/income_chart.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return width <= 1760 && width >= SizeConfig.desktop
        ? const Expanded(child: DetailedIncomeChart())
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
