import 'package:flutter/material.dart';
import 'package:responsive_dashborad/models/income_item_model.dart';
import 'package:responsive_dashborad/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const incomeListItems = [
    IncomeItemModel(
      color: Color(0xFF208CC8),
      title: 'Design service',
      percentage: 40,
    ),
    IncomeItemModel(
      color: Color(0xFF4EB7F2),
      title: 'Design product',
      percentage: 25,
    ),
    IncomeItemModel(
      color: Color(0xFF064061),
      title: 'Product royalti',
      percentage: 20,
    ),
    IncomeItemModel(
      color: Color(0xFFE2DECD),
      title: 'Other',
      percentage: 22,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: incomeListItems.length,
      itemBuilder: (context, index) {
        return ItemDetails(incomeItemModel: incomeListItems[index]);
      },
    );
  }
}

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.incomeItemModel});
  final IncomeItemModel incomeItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: incomeItemModel.color,
        ),
      ),
      title: Text(
        incomeItemModel.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        '${incomeItemModel.percentage}%',
        style: AppStyles.styleMedium16.copyWith(
          color: const Color(0xFF208CC8),
        ),
      ),
    );
  }
}
