import 'package:flutter/material.dart';
import 'package:g/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:g/common/widgets/images/circular_image.dart';
import 'package:g/common/widgets/text/brand_title_text_with_verified_icon.dart';
import 'package:g/common/widgets/text/product_price_text.dart';
import 'package:g/common/widgets/text/product_title_text.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/enums.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';

class GProductMetaData extends StatelessWidget {
  const GProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end, 
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('80.0جم',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: GSizes.spaceBtwItems),
            GProductPriceText(price: '75.0', isLarge: true),
            const SizedBox(width: GSizes.spaceBtwItems),
            GRoundedContainer(
              radius: GSizes.sm,
              padding: const EdgeInsets.symmetric(
                  horizontal: GSizes.sm, vertical: GSizes.xs),
              backgroundColor: GColors.secondary.withOpacity(.8),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: GColors.black),
              ),
            ),
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 1.5),
        Text('أوكسي بالمندرين 2.5 كجم',
            style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: GSizes.spaceBtwItems * 1.5),
        Row(
          mainAxisAlignment: MainAxisAlignment.end, 
          children: [
            Text('متوفر في المخزون',
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(width: GSizes.spaceBtwItems),
            const GProductTitleText(title: 'الحالة'),
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 1.5),
        Row(
          mainAxisAlignment: MainAxisAlignment.end, 
          children: [
            GBrandTitleTextWithVerifiedIcon(
              title: 'أوكسي',
              brandTextSize: TextSizes.medium,
            ),
                  const SizedBox(width: GSizes.spaceBtwItems),
            GCircularImage(
              image: GImages.oxyIcon,
              width: 50,
              height: 50,
            ),
      
          ],
        ),
      ],
    );
  }
}
