import 'package:flutter/material.dart';
import 'package:g/common/widgets/loyouts/grid_loyout.dart';
import 'package:g/common/widgets/products/pruduct_cards/pruduct_card_vertical.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class GSortableProducts extends StatelessWidget {
  const GSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}