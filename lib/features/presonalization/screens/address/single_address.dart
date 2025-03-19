import 'package:flutter/material.dart';
import 'package:g/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class GSingleAddress extends StatelessWidget {
  const GSingleAddress({super.key, required this.selectedAddress});
  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: GRoundedContainer(
        padding: const EdgeInsets.all(GSizes.md),
        width: double.infinity,
        showBorder: true,
        backgroundColor:
            selectedAddress
                ? GColors.primary.withOpacity(.6)
                : Colors.transparent,
        borderColor:
            selectedAddress
                ? Colors.transparent
                : dark
                ? GColors.darkerGrey
                : GColors.grey,
        margin: EdgeInsets.only(bottom: GSizes.spaceBtwItems),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 5,
              child: Icon(
                selectedAddress ? Iconsax.tick_circle5 : null,
                color:
                    selectedAddress
                        ? dark
                            ? GColors.light
                            : GColors.dark
                        : null,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'محمد أيمن',
                  style: Theme.of(context).textTheme.titleLarge,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                const SizedBox(height: GSizes.sm / 2),
                Text(
                  '0111223344',
                  style: Theme.of(context).textTheme.titleLarge,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                const SizedBox(height: GSizes.sm / 2),
                Text(
                  'أسيوط، ديروط، أبو جبل، شارع بوابير النور، برج الدوخي، الدور السابع',
                  softWrap: true,
                ),
                const SizedBox(height: GSizes.spaceBtwItems),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
