import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_styles.dart';
import 'package:responsive_dashborad/widgets/range_option.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleBold20(context),
        ),
        const RangeOption(),
      ],
    );
  }
}
