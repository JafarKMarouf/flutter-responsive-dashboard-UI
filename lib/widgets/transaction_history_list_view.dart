import 'package:flutter/material.dart';
import 'package:responsive_dashborad/models/transaction_model.dart';
import 'package:responsive_dashborad/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
    TransactionModel(
      title: 'title',
      date: '13 April 2024',
      amount: 'amount',
      isWithdrawal: true,
    ),
    TransactionModel(
      title: 'title',
      date: '13 April 2024',
      amount: 'amount',
      isWithdrawal: false,
    ),
    TransactionModel(
      title: 'title',
      date: '13 April 2024',
      amount: 'amount',
      isWithdrawal: true,
    ),
    TransactionModel(
      title: 'title',
      date: '13 April 2024',
      amount: 'amount',
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return TransactionItem(transactionModel: items[index]);
      },
    );
  }
}
