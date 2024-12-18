import 'package:flutter/material.dart';
import 'package:responsive_dashborad/widgets/income_body.dart';
import 'package:responsive_dashborad/widgets/custome_container.dart';
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
          IncomeBody(),
        ],
      ),
    );
  }
}
