import 'package:flutter/material.dart';
import 'package:g/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:g/common/widgets/brands/brand_card.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';

class GBrandShowcase extends StatelessWidget {
  const GBrandShowcase({
    super.key, required this.images,

  });
final List <String> images;


  @override
  Widget build(BuildContext context) {
    return GRoundedContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(GSizes.md),
      margin: const EdgeInsets.only(bottom: GSizes.spaceBtwItems),
      child: Column(children: [
        const GBrandCard(showBorder: false,),
        Row(
          children:images.map((image)=>brandTopProductImageWdget(image,context)).toList(),
        ),
      ],),
    );
  }
  Widget brandTopProductImageWdget(String image,context){
    final dark = GHelperFunctions.isDarkMode(context);
   return Expanded(
               child: GRoundedContainer(
                height: 100,
                backgroundColor: dark?GColors.dark:GColors.light,
                padding: const EdgeInsets.all(GSizes.md),
                margin: const EdgeInsets.only(right: GSizes.sm),
                child: Image(image: AssetImage(image),fit: BoxFit.contain,),
                                         ),
             );
  }
}
