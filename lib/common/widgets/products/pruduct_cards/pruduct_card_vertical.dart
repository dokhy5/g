import 'package:flutter/material.dart';
import 'package:g/common/styles/shadows.dart';
import 'package:g/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:g/common/widgets/icons/circular_icon.dart';
import 'package:g/common/widgets/images/rounded_image.dart';
import 'package:g/common/widgets/text/brand_title_text_with_verified_icon.dart';
import 'package:g/common/widgets/text/product_price_text.dart';
import 'package:g/common/widgets/text/product_title_text.dart';
import 'package:g/features/shop/screens/product_details/product_details.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class GProductCardVertical extends StatelessWidget {
  const GProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: ()=>Get.to(()=>ProductDetails()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [GShadowStyle.verticalProudactShadow],
          color: dark ? GColors.darkerGrey : GColors.white,
          borderRadius: BorderRadius.circular(GSizes.productImageRadius),
        ),
        child: Column(
          children: [
            GRoundedContainer(
              height: 160,
              padding: const EdgeInsets.all(GSizes.sm),
              backgroundColor: dark ? GColors.dark : GColors.light,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  
                  const GRoundedImage(
                    imageUrl: GImages.oxyProduct2,
                    applyImageRadius: true,
                    
                  ),
                  
                  Positioned(
                    top: 12,
                    left: 0,
                    child: GRoundedContainer(
                      radius: GSizes.sm,
                      backgroundColor: GColors.secondary.withOpacity(.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: GSizes.sm,
                        vertical: GSizes.xs,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: GColors.black),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: GCircularIcon(
                      onPressed: () {},
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: GSizes.spaceBtwItems / 2),
      
            Padding(
              padding: EdgeInsets.only(right: GSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GProductTitleText(
                    title: '2.5kاوكسي بالمندرين',
                    smallSize: false,
                  ),
                  SizedBox(height: GSizes.spaceBtwItems / 2),
                  
                  GBrandTitleTextWithVerifiedIcon(title: 'اوكسي',),
                
                ],
              ),
            ),
             Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: GSizes.sm),
                        child: GProductPriceText(price: '75.0',),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: GColors.primary,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(GSizes.cardRadiusMd),
                            bottomLeft: Radius.circular(
                              GSizes.productImageRadius,
                            ),
                          ),
                        ),
                        child: const SizedBox(
                          height: GSizes.iconLg *1.2,
                          width: GSizes.iconLg *1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: GColors.white,),
                            ),
                          ),
                      ),
                      
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
