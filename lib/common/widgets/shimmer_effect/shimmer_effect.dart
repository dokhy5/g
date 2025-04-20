import 'package:flutter/material.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:shimmer/shimmer.dart';

class GShimmerEffect extends StatelessWidget {
  const GShimmerEffect({
    Key? key,
    required this.hight,
    required this.width,
    this.radius = 15,
    this.color,
  }) : super(key: key);
  final double hight, width, radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Shimmer.fromColors(
      baseColor: dark ? Colors.grey[850]! : Colors.grey[300]!,
      highlightColor: dark ? Colors.grey[700]! : Colors.grey[100]!,
      child: Container(
        height: hight,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: color ?? (dark ? GColors.darkerGrey : GColors.white),
        ),
      ),
    );
  }
}
