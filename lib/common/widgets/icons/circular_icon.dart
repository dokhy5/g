import 'package:flutter/material.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/helpers/helper_functions.dart';

class GCircularIcon extends StatelessWidget {
  const GCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size,
    this.color,
    this.backgroundColor,
    required this.icon,
    this.onPressed,
  });
  final double? width, height, size;
  final Color? color;
  final Color? backgroundColor;
  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        // color:
        //     backgroundColor ?? (dark
        //         ? GColors.black.withOpacity(.9)
        //         : GColors.white.withOpacity(.9)),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color)),
    );
  }
}
