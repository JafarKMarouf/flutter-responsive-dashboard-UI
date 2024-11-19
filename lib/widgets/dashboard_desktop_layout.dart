import 'package:flutter/material.dart';
import 'package:responsive_dashborad/widgets/custome_desktop_scroll_view.dart';
import 'package:responsive_dashborad/widgets/custome_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomeDrawer()),
        SizedBox(width: 24),
        Expanded(flex: 3, child: CustomeDesktopScrollView()),
        SizedBox(width: 24),
      ],
    );
  }
}
