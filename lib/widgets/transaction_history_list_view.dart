import 'package:flutter/material.dart';
import 'package:responsive_dashborad/models/transaction_model.dart';
import 'package:responsive_dashborad/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
    TransactionModel(
      title: 'Cash Withdrawal',
      date: '13 April 2024',
      amount: r'$20,129',
      isWithdrawal: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      isWithdrawal: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      date: '13 April 2024',
      amount: r'$20,129',
      isWithdrawal: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .asMap()
          .entries
          .map((e) => TransactionItem(transactionModel: e.value))
          .toList(),
    );
  }
}
