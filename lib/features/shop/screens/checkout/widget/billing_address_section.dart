import 'package:flutter/material.dart';
import 'package:g/common/widgets/text/section_heading.dart';
import 'package:g/utils/constants/sizes.dart';

class GBillingAddressSection extends StatelessWidget {
  const GBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GSectionHeading(
          title: 'عنوان الشحن',
          buttonTitle: 'تغيير',
          onPressed: () {},
        ),
        Text('محمد دوخي', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: GSizes.spaceBtwItems / 2),
        Row(
          textDirection: TextDirection.rtl,
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: GSizes.iconSm),
            const SizedBox(width: GSizes.spaceBtwItems),
            Text('+0123456789', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 2),
        Row(
          textDirection: TextDirection.rtl,
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: GSizes.iconSm),
            const SizedBox(width: GSizes.spaceBtwItems),
            Expanded(
              child: Text('الجنوب الشرقية العربية',
                  style: Theme.of(context).textTheme.bodyMedium, softWrap: true),
            ),
          ],
        ),
      ],
    );
  }
}
