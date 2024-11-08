import 'package:flutter/material.dart';
import 'package:responsive_dashborad/utils/app_styles.dart';
import 'package:responsive_dashborad/widgets/custome_container.dart';

class MyCardHeader extends StatelessWidget {
  const MyCardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeContainer(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'My card',
                style: AppStyles.styleSemiBold20
                    .copyWith(color: const Color(0xff064061)),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
