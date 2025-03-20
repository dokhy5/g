import 'package:flutter/material.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/device/device_utility.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class GSearchContainer extends StatelessWidget {
  const GSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true, 
    this.padding=const EdgeInsets.symmetric(horizontal: GSizes.defaultSpace),
  });
  final String text;
  final IconData icon;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Padding(
      padding:padding,
      child: Container(
        width: GDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(GSizes.md),
        decoration: BoxDecoration(
          color:
              showBackground
                  ? dark
                      ? GColors.dark
                      : GColors.light
                  : Colors.transparent,
          borderRadius: BorderRadius.circular(GSizes.borderRadiusLg),
          border:
              showBorder
                  ? Border.all(color: dark ? GColors.darkerGrey : GColors.grey)
                  : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, color: dark ? GColors.grey : GColors.darkerGrey),
            const SizedBox(width: GSizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
