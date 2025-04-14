import 'package:flutter/material.dart';
import 'package:g/common/widgets/brands/brand_showcase.dart';
import 'package:g/common/widgets/loyouts/grid_loyout.dart';
import 'package:g/common/widgets/products/pruduct_cards/pruduct_card_vertical.dart';
import 'package:g/common/widgets/text/section_heading.dart';
import 'package:g/features/shop/screens/all_products/all_products.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:get/get.dart';

class GCategoryTap extends StatelessWidget {
  const GCategoryTap({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),

      children: [
        Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            children: [
              GBrandShowcase(
                images: [
                  GImages.oxyProduct2,
                  GImages.oxyProduct2,
                  GImages.oxyProduct2,
                ],
              ),
              GBrandShowcase(
                images: [
                  GImages.oxyProduct2,
                  GImages.oxyProduct2,
                  GImages.oxyProduct2,
                ],
              ),

              SizedBox(height: GSizes.spaceBtwItems),
              GSectionHeading(title: 'قد تعجبك ايضا', showActionButton: true
              ,onPressed: () =>Get.to(()=>AllProductsScreen()),),
              SizedBox(height: GSizes.spaceBtwItems),
              GGridLoyout(
                itemCount: 4,
                itemBuilder: (_, index) => GProductCardVertical(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
