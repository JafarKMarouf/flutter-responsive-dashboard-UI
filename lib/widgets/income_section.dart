import 'package:flutter/material.dart';
import 'package:responsive_dashborad/widgets/income_details.dart';
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
          IncomeHeader(),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              SizedBox(width: 40),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
