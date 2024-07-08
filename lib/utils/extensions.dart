import 'package:flutter/material.dart';

import 'size_config.dart';

extension SizeExtension on num {
  double get height => SizeConfig.height(toDouble());

  double get relHeight => SizeConfig.relHeight(toDouble());
  double get width => SizeConfig.width(toDouble());
  double get relWidth => SizeConfig.relWidth(toDouble());
  SizedBox get vSpacer => SizedBox(
        height: relHeight,
      );

  SizedBox get hSpacer => SizedBox(
        width: relWidth,
      );

  double get text => SizeConfig.textSize(toDouble());
}