import 'package:flutter/material.dart';
import 'package:responsive_dashborad/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashborad/widgets/income_section.dart';
import 'package:responsive_dashborad/widgets/my_cards_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoicSection(),
          SizedBox(height: 16),
          MyCardsAndTransactionHistorySection(),
          SizedBox(height: 16),
          IncomeSection(),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
