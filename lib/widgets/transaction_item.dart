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
          style: AppStyles.styleBold16.copyWith(color: const Color(0xff064061)),
        ),
        subtitle: Text(
          transactionModel.date,
          style:
              AppStyles.styleRegular16.copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleBold18.copyWith(
            color: transactionModel.isWithdrawal
                ? const Color(0xFFF3735E)
                : const Color(0xFF7DD97B),
          ),
        ),
      ),
    );
  }
}
