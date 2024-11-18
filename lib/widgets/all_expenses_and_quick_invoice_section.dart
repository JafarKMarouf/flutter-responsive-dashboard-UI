import 'package:flutter/material.dart';
import 'package:responsive_dashborad/widgets/all_expenses.dart';

import 'quick_invoice.dart';

class AllExpensesAndQuickInvoicSection extends StatelessWidget {
  const AllExpensesAndQuickInvoicSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(height: 24),
        QuickInvoice(),
      ],
    );
  }
}
