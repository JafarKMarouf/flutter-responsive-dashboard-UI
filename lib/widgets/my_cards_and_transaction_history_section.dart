import 'package:flutter/material.dart';
import 'package:responsive_dashborad/widgets/custome_container.dart';
import 'package:responsive_dashborad/widgets/my_cards_section.dart';
import 'package:responsive_dashborad/widgets/transaction_history.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40),
      child: CustomeContainer(
        child: Column(
          children: [
            MyCardsSection(),
            Divider(color: Color(0xffF1F1F1), height: 40),
            TransactionHistory(),
          ],
        ),
      ),
    );
  }
}
