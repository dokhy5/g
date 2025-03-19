import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/icons/circular_icon.dart';
import 'package:g/common/widgets/images/rounded_image.dart';
import 'package:g/common/widgets/text/brand_title_text_with_verified_icon.dart';
import 'package:g/common/widgets/text/product_price_text.dart';
import 'package:g/common/widgets/text/product_title_text.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, 
      child: Scaffold(
        appBar: GAppbar(
          title: Text(
            'سلة الشراء',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          showBackArrow: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(height: GSizes.spaceBtwItems),
                  itemCount: 5,
                  itemBuilder: (_, index) => Column(
                    children: [
                      GCartItem(),
                      SizedBox(height: GSizes.spaceBtwItems),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GProductPriceText(price: '75.0'), 
                          GProductQuantityWithAddRemoveButton(),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('إتمام الشراء 75.0 جم'),
          ),
        ),
      ),
    );
  }
}

class GProductQuantityWithAddRemoveButton extends StatelessWidget {
  const GProductQuantityWithAddRemoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      textDirection: TextDirection.rtl, // جعل الأزرار تتبع RTL
      children: [
        GCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: GSizes.md,
          color: GColors.white,
          backgroundColor: GColors.primary,
        ),
        SizedBox(width: GSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        SizedBox(width: GSizes.spaceBtwItems),
        GCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: GSizes.md,
          color: dark ? GColors.white : GColors.black,
          backgroundColor: dark ? GColors.darkGrey : GColors.white,
        ),
      ],
    );
  }
}

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
