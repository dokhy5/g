import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/brands/brand_card.dart';
import 'package:g/common/widgets/sortable/sortable_products.dart';
import 'package:g/utils/constants/sizes.dart';

class GBrandProduct extends StatelessWidget {
  const GBrandProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
        appBar: GAppbar(
          title: Text('العلامات التجارية'),
          showBackArrow: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(GSizes.defaultSpace),
            child: Column(
              children: [
                GBrandCard(showBorder: true),
                const SizedBox(height: GSizes.spaceBtwSections),
                GSortableProducts(),
              ],
            ),
          ),
        ),
      
    );
  }
}
