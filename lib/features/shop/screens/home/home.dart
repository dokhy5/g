import 'package:flutter/material.dart';
import 'package:g/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:g/common/widgets/custom_shapes/container/search_container.dart';
import 'package:g/common/widgets/loyouts/grid_loyout.dart';
import 'package:g/common/widgets/products/pruduct_cards/pruduct_card_vertical.dart';
import 'package:g/common/widgets/text/section_heading.dart';
import 'package:g/features/shop/screens/all_products/all_products.dart';
import 'package:g/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:g/features/shop/screens/home/widgets/home_categories.dart';
import 'package:g/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl, // جعل التخطيط بالكامل من اليمين إلى اليسار
        child: SingleChildScrollView(
          child: Column(
            children: [
              GPrimaryHeaderContainer(
                child: Column(
                  children: [
                    const GHomeAppbar(),
                    const SizedBox(height: GSizes.spaceBtwSections),
                    GSearchContainer(text: 'ابحث عن المنتجات'),
                    const SizedBox(height: GSizes.spaceBtwSections),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GSectionHeading(
                          padding: EdgeInsets.all(GSizes.defaultSpace),
                          title: 'الفئات الاكثر شعبية',
                          showActionButton: false,
                          textColor: GColors.white,
                          textAlign: TextAlign.right, 
                        ),
                        const SizedBox(height: GSizes.spaceBtwItems),
                        GHomeCategories(),
                        SizedBox(height: GSizes.spaceBtwSections),
                      ],
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
                      onPressed: () =>Get.to(()=>AllProductsScreen()),
                      textAlign: TextAlign.right,
                      showActionButton: true,
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
      ),
    );
  }
}