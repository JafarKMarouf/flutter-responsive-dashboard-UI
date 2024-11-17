import 'package:flutter/material.dart';
import 'package:responsive_dashborad/utils/app_styles.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Transaction History',
          style: AppStyles.styleBold20,
        ),
        Text('See All',
            style: AppStyles.styleMedium16
                .copyWith(color: const Color(0xff4EB7F2))),
      ],
    );
  }
}
