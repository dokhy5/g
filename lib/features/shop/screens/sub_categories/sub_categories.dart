import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/images/rounded_image.dart';
import 'package:g/common/widgets/products/pruduct_cards/pruduct_card_horizontal.dart';
import 'package:g/common/widgets/text/section_heading.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GAppbar(
        title: Text('اوكسي'),
        showBackArrow: true,
      ),
      body: Directionality( // 🔹 إضافة اتجاه RTL
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(GSizes.defaultSpace),
            child: Column(
              children: [
                GRoundedImage(
                  width: double.infinity,
                  imageUrl: GImages.oxyBanner2,
                  applyImageRadius: true,
                ),
                const SizedBox(height: GSizes.spaceBtwSections),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // 🔹 محاذاة العناوين لليمين
                  children: [
                    GSectionHeading(
                      title: 'اوكسي جيل',
                      onPressed: () {},
                    ),
                    const SizedBox(height: GSizes.spaceBtwItems / 2),
                    SizedBox(
                      height: 120,
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (_, __) => const SizedBox(width: GSizes.spaceBtwItems),
                        itemBuilder: (context, index) => const GProductCardHorizontal(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
