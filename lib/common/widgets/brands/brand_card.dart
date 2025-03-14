import 'package:flutter/material.dart';
import 'package:g/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:g/common/widgets/images/circular_image.dart';
import 'package:g/common/widgets/text/brand_title_text_with_verified_icon.dart';
import 'package:g/utils/constants/enums.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';

class GBrandCard extends StatelessWidget {
  const GBrandCard({super.key, required this.showBorder, this.onTap});
final bool showBorder;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GRoundedContainer(
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(GSizes.sm),
        showBorder: showBorder,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const GBrandTitleTextWithVerifiedIcon(
                  title: 'اوكسي',
                  brandTextSize: TextSizes.large,
                ),
                Text(
                  '254 منتجات',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
            const SizedBox(width: GSizes.spaceBtwItems / 3),
            Flexible(
              child: GCircularImage(
                isNetworkImage: false,
                image: GImages.oxyIcon,
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
