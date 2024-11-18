import 'package:flutter/material.dart';
import 'package:responsive_dashborad/widgets/custome_drawer.dart';
import 'package:responsive_dashborad/widgets/dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomeDrawer()),
        SizedBox(width: 24),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: DashboardMobileLayout(),
          ),
        ),
        SizedBox(width: 24),
      ],
    );
  }
}
