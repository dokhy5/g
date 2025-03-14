import 'package:flutter/material.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';

class GRoundedContainer extends StatelessWidget {
  const GRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = GSizes.cardRadiusLg,
    this.child,
    this.showBorder = false,
    this.borderColor = GColors.borderPrimary,
    this.backgroundColor = GColors.white,
    this.padding,
    this.margin,
  });
  final double? width, height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
