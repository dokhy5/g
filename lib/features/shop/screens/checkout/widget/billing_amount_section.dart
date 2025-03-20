import 'package:flutter/material.dart';
import 'package:g/utils/constants/sizes.dart';

class GBillingAmountSection extends StatelessWidget {
  const GBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          textDirection: TextDirection.rtl,
          children: [
            Text('الإجمالي الفرعي', style: Theme.of(context).textTheme.bodyMedium),
            Text('جم75.0', style: Theme.of(context).textTheme.labelMedium),
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          textDirection: TextDirection.rtl,
          children: [
            Text('رسوم الشحن', style: Theme.of(context).textTheme.bodyMedium),
            Text('جم5.0', style: Theme.of(context).textTheme.labelMedium),
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          textDirection: TextDirection.rtl,
          children: [
            Text('الضريبة', style: Theme.of(context).textTheme.bodyMedium),
            Text('جم5.0', style: Theme.of(context).textTheme.labelMedium),
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          textDirection: TextDirection.rtl,
          children: [
            Text('المجموع الكلي', style: Theme.of(context).textTheme.bodyMedium),
            Text('جم80.0', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
