import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/size_config.dart';

double getFontSizeResponsive(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  responsiveFontSize = responsiveFontSize.clamp(lowerLimit, upperLimit);
  return responsiveFontSize;
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 2000;
  }
}
