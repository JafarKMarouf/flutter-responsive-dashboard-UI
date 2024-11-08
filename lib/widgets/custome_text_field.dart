import 'package:flutter/material.dart';
import 'package:responsive_dashborad/utils/app_styles.dart';

class CustomeTextFeild extends StatelessWidget {
  const CustomeTextFeild({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyles.styleRegular16.copyWith(
          color: const Color(0xffAAAAAA),
        ),
        filled: true,
        fillColor: const Color(0xffFAFAFA),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
      readOnly: true,
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xffFAFAFA),
      ),
    );
  }
}
