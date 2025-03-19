import 'package:flutter/material.dart';
import 'package:g/common/widgets/icons/circular_icon.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class GProductQuantityWithAddRemoveButton extends StatelessWidget {
  const GProductQuantityWithAddRemoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      textDirection: TextDirection.rtl, // جعل الأزرار تتبع RTL
      children: [
        GCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: GSizes.md,
          color: GColors.white,
          backgroundColor: GColors.primary,
        ),
        SizedBox(width: GSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        SizedBox(width: GSizes.spaceBtwItems),
        GCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: GSizes.md,
          color: dark ? GColors.white : GColors.black,
          backgroundColor: dark ? GColors.darkGrey : GColors.white,
        ),
      ],
    );
  }
}
