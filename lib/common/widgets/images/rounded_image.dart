import 'package:flutter/material.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';

class GRoundedImage extends StatelessWidget {
  const GRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor = Colors.transparent,
    this.fit = BoxFit.fill,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = GSizes.md,
  });
  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(GSizes.sm),
        child: Container(
          width: width,
          height: height,
          padding: padding,
          decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: ClipRRect(
            borderRadius:
                applyImageRadius
                    ? BorderRadius.circular(borderRadius)
                    : BorderRadius.zero,
            child: Image(
              fit: fit,
              image:
                  isNetworkImage
                      ? NetworkImage(imageUrl)
                      : AssetImage(imageUrl) as ImageProvider,
            ),
          ),
        ),
      ),
    );
  }
}
