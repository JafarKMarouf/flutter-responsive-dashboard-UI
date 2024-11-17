import 'package:flutter/material.dart';
import 'package:responsive_dashborad/utils/app_styles.dart';
import 'package:responsive_dashborad/widgets/transaction_header.dart';
import 'package:responsive_dashborad/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHeader(),
        const SizedBox(height: 20),
        Text(
          '13 April 2024',
          style: AppStyles.styleSemiBold16.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        const SizedBox(height: 16),
        const TransactionHistoryListView()
      ],
    );
  }
}
