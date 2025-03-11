import 'package:flutter/material.dart';
import 'package:g/utils/constants/colors.dart';

class GCircularContainer extends StatelessWidget {
  const GCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.backgroundColor = GColors.white,
    this.child,
    this.padding = 0,
  });
  final double? width;
  final double ?height;
  final double radius;
  final double padding;
  final Color backgroundColor;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
    );
  }
}
