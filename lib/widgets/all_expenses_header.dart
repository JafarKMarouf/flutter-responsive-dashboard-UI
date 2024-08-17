import 'package:flutter/material.dart';
import 'package:responsive_dashborad/utils/app_styles.dart';
import 'package:responsive_dashborad/widgets/range_option.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        Spacer(),
        RangeOption(),
      ],
    );
  }
}
