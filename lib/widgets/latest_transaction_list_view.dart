import 'package:flutter/material.dart';
import 'package:responsive_dashborad/models/user_info_model.dart';
import 'package:responsive_dashborad/core/utils/app_images.dart';
import 'package:responsive_dashborad/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const List<UserInfoModel> items = [
    UserInfoModel(
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar2,
    ),
    UserInfoModel(
      name: 'Josua Nunito',
      email: 'Josh Nunito@gmail.com',
      image: Assets.imagesAvatar3,
    ),
    UserInfoModel(
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar2,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) {
          return IntrinsicWidth(
            child: UserInfoListTile(userInfoModel: e),
          );
        }).toList(),
      ),
    );
  }
}
