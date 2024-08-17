import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.backgroundColor,
    this.imageColor,
  });
  final String image;
  final Color? backgroundColor, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: backgroundColor ?? const Color(0xffFAFAFA),
            shape: const OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0xff4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: 1.5708 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor == null ? const Color(0xff064061) : Colors.white,
          ),
        )
      ],
    );
  }
}
