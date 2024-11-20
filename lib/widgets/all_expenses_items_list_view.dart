import 'package:flutter/material.dart';
import 'package:responsive_dashborad/models/all_expenses_item_model.dart';
import 'package:responsive_dashborad/core/utils/app_images.dart';
import 'package:responsive_dashborad/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final items = const [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      balance: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncoming,
      title: 'Income',
      date: 'April 2022',
      balance: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      balance: r'$20,129',
    ),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != index) {
                setState(() {
                  selectedIndex = index;
                });
              }
            },
            child: AllExpensesItem(
              allExpensesItemModel: item,
              isSelected: selectedIndex == index,
            ),
          ),
        );
      }).toList(),
    );
  }
}
