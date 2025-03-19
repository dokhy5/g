import 'package:flutter/material.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class GRatingShareWidget extends StatelessWidget {
  const GRatingShareWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      textDirection: TextDirection.rtl, // جعل الاتجاه من اليمين إلى اليسار
      children: [
        Row(
          textDirection: TextDirection.rtl, // ترتيب النجمة مع التقييم من اليمين
          children: [
            Icon(Iconsax.star5, color: Colors.amber, size: 24),
            const SizedBox(width: GSizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '4.5 ',
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(text: '(199)', style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Iconsax.share, size: GSizes.iconMd),
        ),
      ],
    );
  }
}
