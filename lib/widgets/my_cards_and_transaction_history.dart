import 'package:flutter/material.dart';
import 'package:responsive_dashborad/widgets/my_cards_section.dart';
import 'package:responsive_dashborad/widgets/transaction_history.dart';

class MyCardsAndTransactionHistory extends StatelessWidget {
  const MyCardsAndTransactionHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40),
        MyCardsSection(),
        Divider(
          color: Color(0xffF1F1F1),
          height: 40,
        ),
        TransactionHistory(),
      ],
    );
  }
}
