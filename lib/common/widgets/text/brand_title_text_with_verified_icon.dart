import 'package:flutter/material.dart';
import 'package:g/common/widgets/text/brand_title_text.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/enums.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class GBrandTitleTextWithVerifiedIcon extends StatelessWidget {
  const GBrandTitleTextWithVerifiedIcon({
    super.key,
    required this.title,
     this.maxLines=1,
    this.textColor,
    this.iconColor=GColors.primary,
     this.textAlign=TextAlign.center,
     this.brandTextSize=TextSizes.small,
  });
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign textAlign;
  final TextSizes brandTextSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Iconsax.verify5, color: GColors.primary, size: GSizes.iconXs),
        SizedBox(width: GSizes.xs),
        Flexible(child: GBrandTitleText(
          title: title,
          brandTextSize: brandTextSize,
          textAlign: textAlign,
          maxLines: maxLines,
          color: textColor,

        )),
      ],
    );
  }
}
