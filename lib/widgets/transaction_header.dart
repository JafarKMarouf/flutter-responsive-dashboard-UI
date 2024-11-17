import 'package:flutter/material.dart';
import 'package:responsive_dashborad/utils/app_styles.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20,
        ),
        Text('See All', style: AppStyles.styleMedium16),
      ],
    );
  }
}
