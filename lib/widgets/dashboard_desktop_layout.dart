import 'package:flutter/material.dart';
import 'package:responsive_dashborad/widgets/custome_drawer.dart';
import 'package:responsive_dashborad/widgets/my_card.dart';
import 'package:responsive_dashborad/widgets/my_card_header.dart';

import 'all_expenses_and_quick_invoice_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomeDrawer()),
        SizedBox(width: 24),
        Expanded(flex: 2, child: AllExpensesAndQuickInvoicSection()),
        SizedBox(width: 24),
        Expanded(
          child: MyCard(),
          // child: Column(
          //   children: [
          //     SizedBox(height: 40),
          //     MyCardHeader(),
          //   ],
          // ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
