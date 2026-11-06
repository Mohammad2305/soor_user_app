import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBoxDecoration {
  static BoxDecoration general(Color background, double? radius) =>
      BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius ?? 25.r),
      );

  static BoxDecoration welcomeButton(Color background) =>
      BoxDecoration(color: background, borderRadius: BorderRadius.circular(25));

  static BoxDecoration card({
    required Color background,
    double? radius,
    String? backgroundImage,
  }) => BoxDecoration(
    color: background,
    borderRadius: BorderRadius.circular(radius ?? 25.r),
  );

  static BoxDecoration generalCard({
    required Color background,
    double? radius,
  }) => BoxDecoration(
    color: background,
    borderRadius: BorderRadius.circular(radius ?? 25.r),
  );
}
