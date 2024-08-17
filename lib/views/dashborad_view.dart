import 'package:flutter/material.dart';
import 'package:responsive_dashborad/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashborad/widgets/dashboard_desktop_layout.dart';

class DashboradView extends StatelessWidget {
  const DashboradView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: AdaptiveLayout(
        desktopLayout: (context) => const DashboardDesktopLayout(),
        tabletLayout: (context) => const SizedBox(),
        mobileLayout: (context) => const SizedBox(),
      ),
    );
  }
}
