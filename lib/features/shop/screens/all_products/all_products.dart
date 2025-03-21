import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/loyouts/grid_loyout.dart';
import 'package:g/common/widgets/products/pruduct_cards/pruduct_card_vertical.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: const GAppbar(
          title: Text(
            'الفئات الاكثر شعبية',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          showBackArrow: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(GSizes.defaultSpace),
            child: Column(
              children: [
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'اختر الفئة',
                    prefixIcon: Icon(Iconsax.sort),
                  ),
                  items: [
                    'الاسم',
                    'الأعلى سعرًا',
                    'الأقل سعرًا',
                    'المبيعات',
                    'الأحدث',
                    'الأكثر شهرة'
                  ]
                      .map((option) => DropdownMenuItem<String>(
                            value: option,
                            child: Text(option),
                          ))
                      .toList(),
                  onChanged: (value) {},
                ),
                const SizedBox(height: GSizes.spaceBtwSections),
                GGridLoyout(
                  itemCount: 20,
                  itemBuilder: (_, index) => const GProductCardVertical(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}