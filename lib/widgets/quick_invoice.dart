import 'package:flutter/material.dart';
import 'package:responsive_dashborad/widgets/custome_container.dart';
import 'package:responsive_dashborad/widgets/latest_transaction.dart';
import 'package:responsive_dashborad/widgets/quick_invoic_form.dart';
import 'package:responsive_dashborad/widgets/quick_invoic_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomeContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoicHeader(),
          SizedBox(height: 24),
          LatestTransaction(),
          Divider(height: 48, color: Color(0xffF1F1F1)),
          QuickInvoicForm(),
        ],
      ),
    );
  }
}
