import 'package:flutter/material.dart';
import 'package:g/common/widgets/images/rounded_image.dart';
import 'package:g/common/widgets/text/brand_title_text_with_verified_icon.dart';
import 'package:g/common/widgets/text/product_title_text.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';

class GCartItem extends StatelessWidget {
  const GCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Row(
      textDirection: TextDirection.rtl, // جعل العناصر تبدأ من اليمين
      children: [
        GRoundedImage(
          imageUrl: GImages.oxyProduct2,
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(GSizes.sm),
          backgroundColor: dark ? GColors.darkerGrey : GColors.light,
        ),
        const SizedBox(width: GSizes.spaceBtwItems),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // محاذاة النصوص لليمين
            children: [
              GBrandTitleTextWithVerifiedIcon(title: 'أوكسي'),
              const GProductTitleText(title: '2.5k أوكسي بالمندرين'),
            ],
          ),
        ),
      ],
    );
  }
}
