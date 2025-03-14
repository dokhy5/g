import 'package:flutter/material.dart';
import 'package:g/utils/constants/enums.dart';

class GBrandTitleText extends StatelessWidget {
  const GBrandTitleText({
    super.key,
    required this.title,
    this.color,
    this.maxLines = 1,
    this.brandTextSize = TextSizes.small,
    this.textAlign = TextAlign.center,
  });
  final String title;
  final Color? color;
  final int maxLines;
  final TextSizes brandTextSize;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style:
          brandTextSize == TextSizes.small
              ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
              : brandTextSize == TextSizes.medium
              ? Theme.of(context).textTheme.labelLarge!.apply(color: color)
              : brandTextSize == TextSizes.large
              ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
              : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
