import 'package:flutter/material.dart';
import 'package:responsive_dashborad/models/drawer_item_model.dart';
import 'package:responsive_dashborad/widgets/drawer_item.dart';
import 'package:responsive_dashborad/core/utils/app_images.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});
  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> drawerItems = const [
    DrawerItemModel(image: Assets.imagesDashborad, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesTranscation, title: 'My Transcation'),
    DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesInvestment, title: 'My Investments'),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (currentIndex != index) {
              setState(() {
                currentIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10),
            child: DrawerItem(
              drawerItemModel: drawerItems[index],
              isActive: currentIndex == index ? true : false,
            ),
          ),
        );
      },
    );
  }
}
