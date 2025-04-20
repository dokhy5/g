import 'package:flutter/material.dart';
import 'package:g/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:g/common/widgets/images/circular_image.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';

class GVerticalImageText extends StatelessWidget {
  const GVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = GColors.white,
    this.backgroundColor,
    this.onTap,  this.isNetworkImage=true,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: GSizes.spaceBtwItems),
        child: Column(
          children: [
            GCircularImage(
              fit: BoxFit.fitWidth,
              image:image,
              padding: GSizes.sm*1.4,
              isNetworkImage: isNetworkImage,
              backgroundColor: backgroundColor,
              overlayColor: GHelperFunctions.isDarkMode(context) ? GColors.light : GColors.dark,


             
             
            ),
            SizedBox(height: GSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
