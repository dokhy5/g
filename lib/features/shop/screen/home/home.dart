import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:g/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:g/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:g/common/widgets/custom_shapes/container/search_container.dart';
import 'package:g/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:g/common/widgets/images/rounded_image.dart';
import 'package:g/common/widgets/loyouts/grid_loyout.dart';
import 'package:g/common/widgets/products/pruduct_cards/pruduct_card_vertical.dart';
import 'package:g/common/widgets/text/section_heading.dart';
import 'package:g/features/shop/screen/home/widgets/home_appbar.dart';
import 'package:g/features/shop/screen/home/widgets/home_categories.dart';
import 'package:g/features/shop/screen/home/widgets/promo_slider.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GPrimaryHeaderContainer(
              child: Column(
                children: [
                  const GHomeAppbar(),
                  const SizedBox(height: GSizes.spaceBtwSections),
                  GSearchContainer(text: 'ابحث عن المنتجات'),
                  const SizedBox(height: GSizes.spaceBtwSections),
                  Padding(
                    padding: EdgeInsets.all(GSizes.defaultSpace),
                    child: Directionality(
                      textDirection:
                          TextDirection
                              .rtl, // يجعل التخطيط من اليمين إلى اليسار
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // تأكيد الترتيب الصحيح
                        children: [
                          GSectionHeading(
                            title: 'الفئات الاكثر شعبية',
                            showActionButton: false,
                            textColor: GColors.white,
                            textAlign:
                                TextAlign.right, // يضمن محاذاة النص إلى اليمين
                          ),
                          const SizedBox(height: GSizes.spaceBtwItems),
                          GHomeCategories(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(GSizes.defaultSpace),
              child: Column(
                children: [
                  GPromoSlider(
                    banners: [
                      GImages.oxyBanner2,
                      GImages.arialBanner,
                      GImages.oxyBanner2,
                    ],
                  ),
                  SizedBox(height: GSizes.spaceBtwSections),
                  GSectionHeading(
                    title: 'المنتجات الاكثر شعبية',
                    onPressed: () {},
                  ),
                  const SizedBox(height: GSizes.spaceBtwItems),
                  GGridLoyout(
                    itemCount: 4,
                    itemBuilder: (_, index) => GProductCardVertical(),
                  ),
                  SizedBox(height: GSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
