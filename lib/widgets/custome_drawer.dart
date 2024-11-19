import 'package:flutter/material.dart';
import 'package:responsive_dashborad/models/drawer_item_model.dart';
import 'package:responsive_dashborad/models/user_info_model.dart';
import 'package:responsive_dashborad/utils/app_images.dart';
import 'package:responsive_dashborad/widgets/active_inactive_drawer_item.dart';
import 'package:responsive_dashborad/widgets/drawer_item_list_view.dart';
import 'package:responsive_dashborad/widgets/user_info_list_tile.dart';

class CustomeDrawer extends StatelessWidget {
  const CustomeDrawer({super.key});
  static const UserInfoModel userInfoModel = UserInfoModel(
    email: 'demo@gmail.com',
    image: Assets.imagesAvatar1,
    name: 'Lekan Okeowo',
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 40.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: UserInfoListTile(userInfoModel: userInfoModel),
            ),
            DrawerItemListView(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Expanded(child: SizedBox(height: 20)),
                    InActiveDrawerItem(
                      drawerItemModel: DrawerItemModel(
                        image: Assets.imagesSetting,
                        title: 'Setting system',
                      ),
                    ),
                    InActiveDrawerItem(
                      drawerItemModel: DrawerItemModel(
                        image: Assets.imagesLogout,
                        title: 'Logout Account',
                      ),
                    ),
                    SizedBox(height: 48),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
