import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_styles.dart';

class MyCardHeader extends StatelessWidget {
  const MyCardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'My card',
      style: AppStyles.styleBold20(context)
          .copyWith(color: const Color(0xff064061)),
    );
  }
}
