import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/brands/brand_card.dart';
import 'package:g/common/widgets/loyouts/grid_loyout.dart';
import 'package:g/features/shop/all_brands/brand_product.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: GAppbar(
          title: Text('العلامات التجارية'),
          showBackArrow: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(GSizes.defaultSpace),
            child: Column(
              children: [
                const SizedBox(height: GSizes.spaceBtwItems),
                GGridLoyout(
                  itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) => GBrandCard(
                    showBorder: true,
                    onTap: () => Get.to(() => GBrandProduct()),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
