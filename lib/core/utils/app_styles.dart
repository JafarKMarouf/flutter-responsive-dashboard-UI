import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/functions/get_font_size_responsive.dart';

abstract class AppStyles {
  static TextStyle styleRegular12(context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontSize: getFontSizeResponsive(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontSize: getFontSizeResponsive(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular16(context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getFontSizeResponsive(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getFontSizeResponsive(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getFontSizeResponsive(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getFontSizeResponsive(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getFontSizeResponsive(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold18(context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getFontSizeResponsive(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontSize: getFontSizeResponsive(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getFontSizeResponsive(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold20(context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getFontSizeResponsive(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getFontSizeResponsive(context, fontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
}
