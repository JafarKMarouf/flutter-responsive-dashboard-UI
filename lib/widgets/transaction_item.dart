import 'package:flutter/material.dart';
import 'package:responsive_dashborad/models/transaction_model.dart';
import 'package:responsive_dashborad/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.transactionModel,
  });

  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular16,
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleSemiBold20.copyWith(
            color: transactionModel.isWithdrawal
                ? const Color(0xFFF3735E)
                : const Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}
