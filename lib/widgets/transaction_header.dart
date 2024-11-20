import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_styles.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleBold20(context),
        ),
        Text('See All',
            style: AppStyles.styleMedium16(context)
                .copyWith(color: const Color(0xff4EB7F2))),
      ],
    );
  }
}
