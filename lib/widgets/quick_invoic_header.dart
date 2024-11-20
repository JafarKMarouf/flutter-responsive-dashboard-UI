import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_styles.dart';

class QuickInvoicHeader extends StatelessWidget {
  const QuickInvoicHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleBold20(context),
        ),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            color: Color(0xffFAFAFA),
            shape: OvalBorder(),
          ),
          child: const Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}
