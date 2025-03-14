import 'package:flutter/material.dart';
import 'package:g/utils/constants/colors.dart';

class GShadowStyle  {

  static final  horizontalProudactShadow = BoxShadow(
    color: GColors.darkGrey.withOpacity(0.1),
    offset: Offset(0, 2),
    blurRadius: 50,
    spreadRadius: 7,
  );
  static final verticalProudactShadow = BoxShadow(
    color: GColors.darkGrey.withOpacity(0.1),
    offset: Offset(0, 2),
    blurRadius: 50,
    spreadRadius: 7,
  );
}