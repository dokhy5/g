import 'package:flutter/material.dart';

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
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color:
            backgroundColor ,
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color),
      padding: EdgeInsets.zero,
      ),
    );
  }
}
