import 'package:flutter/material.dart';
import 'package:g/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class GOrderListItems extends StatelessWidget {
  const GOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: GSizes.spaceBtwItems),
      itemCount: 7,
      itemBuilder: (_, index) => GRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(GSizes.md),
        backgroundColor: dark ? GColors.dark : GColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Iconsax.ship),
                const SizedBox(width: GSizes.spaceBtwItems / 2),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end, // ✅ محاذاة لليمين
                  children: [
                    Text(
                      'جاري المعالجة',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .apply(color: GColors.primary, fontSizeDelta: 1),
                    ),
                    Text(
                      '09/09/2022',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Iconsax.arrow_left_2, size: GSizes.iconSm), // ✅ تغيير اتجاه السهم
                ),
              ],
            ),
            const SizedBox(height: GSizes.spaceBtwItems),
            // ✅ الصف الثاني: رقم الطلب + تاريخ الشحن
            Row(
              mainAxisAlignment: MainAxisAlignment.end, // ✅ عكس الاتجاه
              children: [
                Expanded(
                  child: Row(

                    children: [
                      Icon(Iconsax.tag),
                      const SizedBox(width: GSizes.spaceBtwItems / 2),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('رقم الطلب', style: Theme.of(context).textTheme.labelMedium),
                            Text('[#657348]', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Iconsax.calendar),
                      const SizedBox(width: GSizes.spaceBtwItems / 2),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('تاريخ الشحن', style: Theme.of(context).textTheme.labelMedium),
                            Text('09/09/2022', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
