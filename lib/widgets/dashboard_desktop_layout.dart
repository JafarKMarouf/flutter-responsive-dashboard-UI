import 'package:flutter/material.dart';
import 'package:responsive_dashborad/widgets/custome_drawer.dart';
import 'package:responsive_dashborad/widgets/income_section.dart';
import 'package:responsive_dashborad/widgets/my_cards_and_transaction_history_section.dart';
import 'all_expenses_and_quick_invoice_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomeDrawer()),
        SizedBox(width: 24),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: AllExpensesAndQuickInvoicSection(),
          ),
        ),
        SizedBox(width: 24),
        Expanded(
          child: Column(
            children: [
              SizedBox(height: 40),
              MyCardsAndTransactionHistorySection(),
              SizedBox(height: 24),
              Expanded(child: IncomeSection()),
              SizedBox(height: 24),
            ],
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
