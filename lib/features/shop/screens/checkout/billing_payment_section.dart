import 'package:flutter/material.dart';
import 'package:g/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:g/common/widgets/text/section_heading.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';

class GBillingPaymentSection extends StatelessWidget {
  const GBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GSectionHeading(
          title: 'طريقة الدفع',
          buttonTitle: 'تغيير',
          onPressed: () {},
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 2),
        Row(
          textDirection: TextDirection.rtl,
          children: [
            GRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? GColors.light : GColors.white,
              padding: const EdgeInsets.all(GSizes.md),
              child: Image(
                image: AssetImage(GImages.google),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: GSizes.spaceBtwItems / 2),
            Text('Google Pay', style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}
