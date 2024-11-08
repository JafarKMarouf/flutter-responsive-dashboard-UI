import 'package:flutter/material.dart';
import 'package:responsive_dashborad/widgets/custome_button.dart';
import 'package:responsive_dashborad/widgets/title_text_field.dart';

class QuickInvoicForm extends StatelessWidget {
  const QuickInvoicForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: 'Item mount',
                hint: 'USD',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomeButton(
                title: 'Send Money',
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: CustomeButton(
                title: 'Add more details',
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
