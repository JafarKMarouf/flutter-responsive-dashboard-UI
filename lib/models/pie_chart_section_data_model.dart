import 'package:flutter/material.dart';

class PieChartSectionDataModel {
  final double value;
  final Color color;
  final double radius;
  final bool showTitle;

  const PieChartSectionDataModel({
    required this.value,
    required this.color,
    required this.radius,
    required this.showTitle,
  });
}
