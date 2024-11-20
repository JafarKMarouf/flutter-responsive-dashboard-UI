import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/size_config.dart';
import 'package:responsive_dashborad/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashborad/widgets/custome_drawer.dart';
import 'package:responsive_dashborad/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashborad/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashborad/widgets/dashboard_tablet_layout.dart';

class DashboradView extends StatefulWidget {
  const DashboradView({super.key});

  @override
  State<DashboradView> createState() => _DashboradViewState();
}

class _DashboradViewState extends State<DashboradView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.of(context).size.width < SizeConfig.tablet
          ? AppBar(
              leading: IconButton(
                onPressed: () => scaffoldKey.currentState!.openDrawer(),
                icon: const Icon(Icons.menu),
              ),
              backgroundColor: const Color(0xffFFFFFF),
              elevation: 0,
            )
          : null,
      drawer: const CustomeDrawer(),
      // backgroundColor: const Color(0xFFFAFAFA),
      backgroundColor: const Color(0xffE5E5E5),
      body: AdaptiveLayout(
        desktopLayout: (context) => const DashboardDesktopLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        mobileLayout: (context) => const DashboardMobileLayout(),
      ),
    );
  }
}
