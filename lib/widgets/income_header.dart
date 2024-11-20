import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_styles.dart';
import 'package:responsive_dashborad/widgets/range_option.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyles.styleBold20(context),
        ),
        const RangeOption(),
      ],
    );
  }
}
