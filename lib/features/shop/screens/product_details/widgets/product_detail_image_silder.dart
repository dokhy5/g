import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:g/common/widgets/icons/circular_icon.dart';
import 'package:g/common/widgets/images/rounded_image.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class GProductDetailImageSlider extends StatelessWidget {
  const GProductDetailImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return GCurvedEdgeWidget(
      child: Container(
        color: dark ? GColors.darkerGrey : GColors.light,
        child: Stack(
          children: [
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(GSizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(GImages.oxyProduct2),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              right: GSizes.defaultSpace,
              bottom: 30,
              left: 0,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(width: GSizes.spaceBtwItems),
                  itemBuilder: (_, index) => GRoundedImage(
                    width: 80,
                    imageUrl: GImages.oxyProduct2,
                    padding: const EdgeInsets.all(GSizes.sm),
                    border: Border.all(
                      color: dark ? GColors.white : GColors.darkerGrey,
                    ),
                    backgroundColor: dark ? GColors.dark : GColors.light,
                  ),
                ),
              ),
            ),
            GAppbar(
              showBackArrow: true,
              actions: [
                GCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
