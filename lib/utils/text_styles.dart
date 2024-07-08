import 'package:flutter/material.dart';
import 'package:genteel_store/utils/colors.dart';

class Styles {
  static TextStyle x28dp700w({Color? color, double? weight, double? height}) =>
      TextStyle(
        fontFamily: 'AirbnbCereal',
        height: height ?? 1.4,
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: color ?? AppColors.primaryColor,
      );
}
